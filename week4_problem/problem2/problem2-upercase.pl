#!/usr/bin/env perl
# Q2: open file make all the letters in each line uppercase.
use strict;
use warnings;
use autodie;

# file name.
my $in  = shift || 'file-problem2.txt';
my $out = shift || 'output2.txt';

# open file read the line and uppercase the content.
open my $in_fh,  '<', $in;
open my $out_fh, '>', $out;

while (my $line = <$in_fh>) {
    chomp $line;
    my $line_uppercase = uc $line;
    print $out_fh "$line_uppercase\n";
}

close($in_fh);
close($out_fh);
