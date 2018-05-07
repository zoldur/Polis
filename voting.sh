#!/bin/bash

COIN_CLI='/usr/local/bin/polis-cli'

function vote_proposals() {
 TECH='68f62bc84f7fef0ca3f5c6fe71b48a6878340c573ca29a6554351c63a30d8538'
 DEFAULT_VOTE='YES'
 read -p 'Vote for tech propsal: ' -i $DEFAULT_VOTE -e VOTE
 : ${VOTE:=$DEFAULT_VOTE}
 if [[ "$VOTE" == "YES" ]]; then
  $COIN_CLI gobject vote-conf $TECH funding yes
 else
  echo "Voted no"
 fi
}

vote_proposals
