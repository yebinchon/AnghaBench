
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int* padTHPhase; } ;
struct TYPE_4__ {TYPE_1__ m; } ;


 TYPE_2__ Pico ;
 int* PicoPadInt ;

__attribute__((used)) static u32 read_pad_6btn(int i, u32 out_bits)
{
  u32 pad = ~PicoPadInt[i];
  int phase = Pico.m.padTHPhase[i];
  u32 value;

  if (phase == 2 && !(out_bits & 0x40)) {
    value = (pad & 0xc0) >> 2;
    goto out;
  }
  else if(phase == 3) {
    if (out_bits & 0x40)
      return (pad & 0x30) | ((pad >> 8) & 0xf);
    else
      return ((pad & 0xc0) >> 2) | 0x0f;
    goto out;
  }

  if (out_bits & 0x40)
    value = pad & 0x3f;
  else
    value = ((pad & 0xc0) >> 2) | (pad & 3);

out:
  value |= out_bits & 0x40;
  return value;
}
