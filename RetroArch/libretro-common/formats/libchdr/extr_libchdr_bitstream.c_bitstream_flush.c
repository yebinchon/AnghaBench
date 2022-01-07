
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bitstream {int bits; int buffer; int doffset; } ;



uint32_t bitstream_flush(struct bitstream* bitstream)
{
 while (bitstream->bits >= 8)
 {
  bitstream->doffset--;
  bitstream->bits -= 8;
 }
 bitstream->bits = bitstream->buffer = 0;
 return bitstream->doffset;
}
