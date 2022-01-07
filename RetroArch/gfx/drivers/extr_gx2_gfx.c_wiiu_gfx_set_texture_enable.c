
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int enable; } ;
struct TYPE_4__ {TYPE_1__ menu; } ;
typedef TYPE_2__ wiiu_video_t ;



__attribute__((used)) static void wiiu_gfx_set_texture_enable(void *data, bool state, bool full_screen)
{
   (void) full_screen;
   wiiu_video_t *wiiu = (wiiu_video_t *) data;

   if (wiiu)
      wiiu->menu.enable = state;

}
