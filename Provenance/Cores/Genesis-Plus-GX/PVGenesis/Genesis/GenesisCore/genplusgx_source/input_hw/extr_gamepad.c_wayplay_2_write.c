
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char pad_index ;

void wayplay_2_write(unsigned char data, unsigned char mask)
{
  if ((mask & 0x70) == 0x70)
  {
    pad_index = (data & 0x70) >> 4;
  }
}
