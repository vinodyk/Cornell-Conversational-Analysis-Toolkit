#!/usr/bin/env bash
# copy readme but remove title
tail -n +2 ../README.md > index.md+
nanosite build
rsync output/index.html $ZISSOU_speaker@zissou.infosci.cornell.edu:/var/www/html/socialkit/
rsync output/style.css $ZISSOU_speaker@zissou.infosci.cornell.edu:/var/www/html/socialkit/