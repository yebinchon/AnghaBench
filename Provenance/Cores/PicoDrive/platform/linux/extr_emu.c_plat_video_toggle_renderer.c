
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int renderer; } ;


 int RT_COUNT ;
 int apply_renderer () ;
 TYPE_1__ currentConfig ;
 int emu_status_msg (int ) ;
 int * renderer_names ;

void plat_video_toggle_renderer(int change, int is_menu)
{
 currentConfig.renderer += change;
 if (currentConfig.renderer >= RT_COUNT)
  currentConfig.renderer = 0;
 else if (currentConfig.renderer < 0)
  currentConfig.renderer = RT_COUNT - 1;

 if (!is_menu)
  apply_renderer();

 emu_status_msg(renderer_names[currentConfig.renderer]);
}
