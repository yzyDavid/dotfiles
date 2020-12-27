# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.

export LESSCHARSET=utf8
# export LANG=zh_CN.UTF-8

alias mk=make

alias rm='rm -i'

alias g='git'
alias gst='git status'
alias gl='git pull'
alias gp='git push'
alias ga='git add'
alias gc='git commit -v'
alias gca='git commit -a -v'
alias gcm='git commit -v -m'
alias gcam='git commit -a -v -m'
alias gd='git diff'
alias gup='git pull --rebase'

export KUBECONFIG=/etc/kubernetes/kubeconfig.yaml

alias pc='proxychains -q'
alias code=visual-studio-code
alias emacs='emacsclient -t'

export PATH=$PATH:$HOME/go/bin
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.local/bin:$PATH

# golang, do not export it at env.d/
# or root build would crash.

# export GO111MODULE=ON
export GOPROXY=https://goproxy.io

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# opam configuration
test -r /home/yzy/.opam/opam-init/init.sh && . /home/yzy/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

export PATH=/home/yzy/.tiup/bin:$PATH
