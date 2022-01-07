
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int h; int y; int w; int x; } ;
struct TYPE_6__ {TYPE_1__ viewport; } ;
struct TYPE_5__ {int aspect; int overscan; scalar_t__ yscale; scalar_t__ xscale; scalar_t__ render; int gg_extra; } ;


 scalar_t__ MCLOCK_NTSC ;
 scalar_t__ SYSTEM_GG ;
 int VI_MAX_HEIGHT_NTSC ;
 int VI_MAX_HEIGHT_PAL ;
 TYPE_3__ bitmap ;
 TYPE_2__ config ;
 scalar_t__ gc_pal ;
 int* reg ;
 scalar_t__ system_clock ;
 scalar_t__ system_hw ;
 scalar_t__ vdp_pal ;

__attribute__((used)) static void gxSetAspectRatio(int *xscale, int *yscale)
{

  *yscale = (bitmap.viewport.h + (2 * bitmap.viewport.y)) / 2;


  if (config.aspect)
  {

    if (vdp_pal && (!gc_pal || config.render))
    {
      *yscale = *yscale * VI_MAX_HEIGHT_NTSC / VI_MAX_HEIGHT_PAL;
    }
    else if (!vdp_pal && gc_pal && !config.render)
    {
      *yscale = *yscale * VI_MAX_HEIGHT_PAL / VI_MAX_HEIGHT_NTSC;
    }





    if (config.overscan & 2)
    {

      if (reg[12] & 1)
      {

        *xscale = (system_clock == MCLOCK_NTSC) ? 350 : 354;
      }
      else
      {

        *xscale = (system_clock == MCLOCK_NTSC) ? 357 : 361;
      }
    }
    else
    {

      if ((system_hw == SYSTEM_GG) && !config.gg_extra)
      {

        *xscale = 202;
      }
      else
      {

        *xscale = (system_clock == MCLOCK_NTSC) ? 322 : 325;
      }
    }


    if (config.aspect & 2)
    {

      *xscale = (*xscale * 3) / 4;
    }
  }


  else
  {

    *xscale = bitmap.viewport.w + (2 * bitmap.viewport.x);


    if (!(reg[12] & 1))
    {
        *xscale = (*xscale * 320) / 256;
    }


    if ((system_hw == SYSTEM_GG) && !config.gg_extra)
    {
      if (!(config.overscan & 1))
      {

        *yscale = 112;
      }

      if (!(config.overscan & 2))
      {

        *xscale = 320;
      }
    }


    if (gc_pal && !config.render)
    {

      *yscale = *yscale * VI_MAX_HEIGHT_PAL / VI_MAX_HEIGHT_NTSC;
    }


    *xscale += config.xscale;
    *yscale += config.yscale;
  }
}
