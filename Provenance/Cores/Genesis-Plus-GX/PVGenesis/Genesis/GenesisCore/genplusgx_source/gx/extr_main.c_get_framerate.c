
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tv_mode; scalar_t__ render; int vsync; } ;


 TYPE_1__ config ;
 scalar_t__ interlaced ;
 scalar_t__ vdp_pal ;

double get_framerate(void)
{

  if (!config.vsync || (config.tv_mode == !vdp_pal))
  {
    return 0.0;
  }


  if (vdp_pal)
  {


    return (config.render || interlaced) ? (27000000.0/864.0/625.0) : (13500000.0/864.0/312.0);
  }
  else
  {



    return (config.render || interlaced) ? (27000000.0/858.0/525.0) : (13500000.0/858.0/263.0);
  }
}
