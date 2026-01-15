#!/bin/bash

mailq | grep MAILER-DAEMON | cut -f 1 -d ' ' | tr -d '*' | xargs -n 1 postsuper -d
