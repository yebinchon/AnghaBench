
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pal; int dirtyPal; } ;
struct TYPE_4__ {TYPE_1__ m; } ;


 TYPE_2__ Pico ;
 int PicoRegionOverride ;
 int rendstatus_old ;
 int scanlines_total ;

void PicoLoopPrepare(void)
{
  if (PicoRegionOverride)

    Pico.m.pal = (PicoRegionOverride == 2 || PicoRegionOverride == 8) ? 1 : 0;


  scanlines_total = Pico.m.pal ? 312 : 262;

  Pico.m.dirtyPal = 1;
  rendstatus_old = -1;
}
