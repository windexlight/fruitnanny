#!/bin/bash

function on {
	sudo uhubctl -l 2 -a 1
}

function off {
        sudo uhubctl -l 2 -a 0
}

function status {
	! sudo uhubctl -l 2 | grep -q power && echo $?
}

case $1 in  
  on) on ;; 
  off) off ;; 
  status) status ;; 
esac
