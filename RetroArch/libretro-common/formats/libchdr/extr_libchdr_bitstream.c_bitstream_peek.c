
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bitstream {int bits; size_t doffset; size_t dlength; int buffer; int* read; } ;



uint32_t bitstream_peek(struct bitstream* bitstream, int numbits)
{
 if (numbits == 0)
  return 0;


 if (numbits > bitstream->bits)
 {
  while (bitstream->bits <= 24)
  {
   if (bitstream->doffset < bitstream->dlength)
    bitstream->buffer |= bitstream->read[bitstream->doffset] << (24 - bitstream->bits);
   bitstream->doffset++;
   bitstream->bits += 8;
  }
 }


 return bitstream->buffer >> (32 - numbits);
}
