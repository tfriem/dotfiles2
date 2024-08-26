# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# General settings
export TERM="xterm-256color"
export EDITOR="nvim"

# bat and bat-extras
if type "bat" > /dev/null; then
	alias cat=bat
fi
if type "batcat" > /dev/null; then
	alias cat=batcat
fi

# Oh My Zsh
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(zsh-nvm git tmux cp copyfile copypath dircycle history-substring-search colored-man-pages)

DISABLE_AUTO_UPDATE="true"
DISABLE_UPDATE_PROMPT="true"

HYPHEN_INSENSITIVE="true"

COMPLETION_WAITING_DOTS="true"

# ZSH_TMUX_AUTOSTART="true"
# ZSH_TMUX_AUTOCONNECT="false"

source ~/.oh-my-zsh/oh-my-zsh.sh

# Powerlevel10k prompt
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
alias preview="fzf --preview 'bat --color \"always\" {}'"
export FZF_DEFAULT_OPTS="--bind='ctrl-o:execute(code {})+abort'"


# SDKMAN
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
