
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* pan; } ;
struct TYPE_4__ {TYPE_1__ OPN; } ;


 unsigned char TL_BITS ;
 int bitmask ;
 TYPE_2__ ym2612 ;

void YM2612Config(unsigned char dac_bits)
{
  int i;


  bitmask = ~((1 << (TL_BITS - dac_bits)) - 1);


  for (i=0; i<2*6; i++)
  {
    if (ym2612.OPN.pan[i])
    {
      ym2612.OPN.pan[i] = bitmask;
    }
  }
}
