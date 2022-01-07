
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dirtyPal; } ;
struct TYPE_4__ {TYPE_1__ m; scalar_t__ cram; } ;


 scalar_t__* HighPal ;
 TYPE_2__ Pico ;

void PicoDoHighPal555M4(void)
{
  unsigned int *spal=(void *)Pico.cram;
  unsigned int *dpal=(void *)HighPal;
  unsigned int t;
  int i;

  Pico.m.dirtyPal = 0;


  for (i = 0x20/2; i > 0; i--, spal++, dpal++) {
    t = *spal;



    t = ((t & 0x00030003)<<14) | ((t & 0x000c000c)<<7) | ((t & 0x00300030)>>1);

    t |= t >> 2;
    t |= (t >> 4) & 0x08610861;
    *dpal = t;
  }
  HighPal[0xe0] = 0;
}
