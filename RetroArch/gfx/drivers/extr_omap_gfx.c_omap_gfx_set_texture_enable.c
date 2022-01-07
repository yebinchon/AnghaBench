
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int active; } ;
struct TYPE_4__ {TYPE_1__ menu; } ;
typedef TYPE_2__ omap_video_t ;



__attribute__((used)) static void omap_gfx_set_texture_enable(void *data, bool state, bool full_screen)
{
   omap_video_t *vid = (omap_video_t*)data;
   vid->menu.active = state;

   (void) full_screen;
}
