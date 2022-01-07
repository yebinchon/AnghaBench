
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitstream {int doffset; int bits; int dlength; } ;



int bitstream_overflow(struct bitstream* bitstream) { return ((bitstream->doffset - bitstream->bits / 8) > bitstream->dlength); }
