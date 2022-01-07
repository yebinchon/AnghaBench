
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dirtyPal; } ;
struct TYPE_4__ {scalar_t__ cram; TYPE_1__ m; } ;


 scalar_t__ HighPal ;
 TYPE_2__ Pico ;

void PicoDoHighPal555(int sh)
{
  unsigned int *spal, *dpal;
  unsigned int t, i;

  Pico.m.dirtyPal = 0;

  spal = (void *)Pico.cram;
  dpal = (void *)HighPal;

  for (i = 0; i < 0x40 / 2; i++) {
    t = spal[i];



    t = ((t & 0x000e000e)<<12) | ((t & 0x00e000e0)<<3) | ((t & 0x0e000e00)>>7);



    t |= (t >> 4) & 0x08610861;
    dpal[i] = t;
  }


  if (sh)
  {

    for (i = 0; i < 0x40 / 2; i++)
      dpal[0x40/2 | i] = dpal[0xc0/2 | i] = (dpal[i] >> 1) & 0x738e738e;

    for (i = 0; i < 0x40 / 2; i++) {
      t = ((dpal[i] >> 1) & 0x738e738e) + 0x738e738e;
      t |= (t >> 4) & 0x08610861;
      dpal[0x80/2 | i] = t;
    }
  }
}
