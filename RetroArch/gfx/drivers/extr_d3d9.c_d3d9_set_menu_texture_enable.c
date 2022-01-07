
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* menu; } ;
typedef TYPE_2__ d3d9_video_t ;
struct TYPE_3__ {int enabled; int fullscreen; } ;



__attribute__((used)) static void d3d9_set_menu_texture_enable(void *data,
      bool state, bool full_screen)
{
   d3d9_video_t *d3d = (d3d9_video_t*)data;

   if (!d3d || !d3d->menu)
      return;

   d3d->menu->enabled = state;
   d3d->menu->fullscreen = full_screen;
}
