
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int enable; int fullscreen; } ;
struct TYPE_4__ {TYPE_1__ menu_texture; } ;
typedef TYPE_2__ switch_video_t ;



__attribute__((used)) static void switch_set_texture_enable(void *data, bool enable, bool full_screen)
{
 switch_video_t *sw = data;
   if (!sw)
      return;

 sw->menu_texture.enable = enable;
 sw->menu_texture.fullscreen = full_screen;
}
