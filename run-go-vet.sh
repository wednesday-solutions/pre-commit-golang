#!/usr/bin/env bash
set -e -x
echo $1 $2
echo $2
echo $@
echo $#
pkg=$(go list)
for dir in $(echo $@|xargs -n1 dirname|sort -u); do
  go vet $pkg/$dir
done
