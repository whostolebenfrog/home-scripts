# Set manly mode
set -o vi

# Local bin
export PATH=$PATH:$HOME/bin

# Pretty colours
alias ls="ls -G"

# less colours [fewer ;-)]
alias ls='CLICOLOR_FORCE=1 ls -G'
alias less='less -R'

# java
JAVA_OPTS="-Dfile.encoding=UTF-8" 

# git autocompletion!
source $HOME/bin/git-completion.bash

# ec2 name converting trick
function ec2 {
    ssh `echo $1 | sed -e "s/ip-//" | sed -e "s/.aws.int.ent.nokia.com//" | sed -e "s/.aws.brislabs.com//" | tr "-" "."`
}

# java
function javaDebug {
    java -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=8000 "$@"
}
export JAVA_HOME=`/usr/libexec/java_home`
export JAVA_OPTS="-Dfile.encoding=UTF-8 -Duser.timezone=UTC"
export JAVA_TOOL_OPTIONS="-Dfile.encoding=UTF-8 -Duser.timezone=UTC"
export MAVEN_OPTS="-XX:MaxPermSize=128M"

# emacs
alias emacs='/Applications/Emacs.app/Contents/MacOS/Emacs -nw $1'

# ssh from dash to dot format (a is for amazon)
function ssha {
  ssh `echo $1 | sed 's/-/\./g'`
}

# Don't truncate history
export HISTSIZE=""

# Don't allow bash history to be altered
bind 'revert-all-at-newline on'

# Git without jenkins bot
alias glg='git lg | grep -v "entertainment-jenkins-bot" | less'
