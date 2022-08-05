#!/bin/bash
## Copy to newly created directory
mkdir -p ~/.bashrc.d/ &&
    cp -r ./alias/*.bashrc ~/.bashrc.d/

## Add alias to preffered terminal
alias_path="~/.bashrc.d"
cat >>~/.bashrc <<EOF
########## Helper unix alias ############
## General and system command alias
[[ -f $alias_path/general.bashrc ]] && . $alias_path/general.bashrc
[[ -f $alias_path/system.bashrc ]] && . $alias_path/system.bashrc
## Docker, docker-compose and docker-stack command alias
[[ -f $alias_path/docker.bashrc ]] && . $alias_path/docker.bashrc
[[ -f $alias_path/docker-compose.bashrc ]] && . $alias_path/docker-compose.bashrc
[[ -f $alias_path/docker-stack.bashrc ]] && . $alias_path/docker-stack.bashrc
EOF