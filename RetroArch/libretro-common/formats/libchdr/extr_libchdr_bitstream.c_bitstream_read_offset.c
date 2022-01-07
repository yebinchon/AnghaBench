
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bitstream {int bits; int doffset; } ;



uint32_t bitstream_read_offset(struct bitstream* bitstream)
{
 uint32_t result = bitstream->doffset;
 int bits = bitstream->bits;
 while (bits >= 8)
 {
  result--;
  bits -= 8;
 }
 return result;
}
