
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitstream {int buffer; int bits; } ;



void bitstream_remove(struct bitstream* bitstream, int numbits)
{
 bitstream->buffer <<= numbits;
 bitstream->bits -= numbits;
}
