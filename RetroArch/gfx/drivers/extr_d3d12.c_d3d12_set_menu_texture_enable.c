
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int enabled; int fullscreen; } ;
struct TYPE_4__ {TYPE_1__ menu; } ;
typedef TYPE_2__ d3d12_video_t ;



__attribute__((used)) static void d3d12_set_menu_texture_enable(void* data,
      bool state, bool full_screen)
{
   d3d12_video_t* d3d12 = (d3d12_video_t*)data;

   if (!d3d12)
      return;

   d3d12->menu.enabled = state;
   d3d12->menu.fullscreen = full_screen;
}
