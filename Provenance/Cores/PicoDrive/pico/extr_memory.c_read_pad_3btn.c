
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int* PicoPadInt ;

__attribute__((used)) static u32 read_pad_3btn(int i, u32 out_bits)
{
  u32 pad = ~PicoPadInt[i];
  u32 value;

  if (out_bits & 0x40)
    value = pad & 0x3f;
  else
    value = ((pad & 0xc0) >> 2) | (pad & 3);

  value |= out_bits & 0x40;
  return value;
}
