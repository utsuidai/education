#!/bin/bash

dirs="a b c"

for var in $dirs
do
	mkdir -p $var
		for i in `seq 1 5`
		do
			touch -d `date -d "$i days ago" '+%Y/%m/%d'` $var/$i
		done
done

