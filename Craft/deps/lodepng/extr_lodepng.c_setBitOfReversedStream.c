
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void setBitOfReversedStream(size_t* bitpointer, unsigned char* bitstream, unsigned char bit)
{

  if(bit == 0) bitstream[(*bitpointer) >> 3] &= (unsigned char)(~(1 << (7 - ((*bitpointer) & 0x7))));
  else bitstream[(*bitpointer) >> 3] |= (1 << (7 - ((*bitpointer) & 0x7)));
  (*bitpointer)++;
}
