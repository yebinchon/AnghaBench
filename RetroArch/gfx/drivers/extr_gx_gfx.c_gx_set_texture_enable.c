
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int menu_texture_enable; int should_resize; } ;
typedef TYPE_1__ gx_video_t ;



__attribute__((used)) static void gx_set_texture_enable(void *data, bool enable, bool full_screen)
{
   gx_video_t *gx = (gx_video_t*)data;

   (void)full_screen;

   if (!gx)
      return;

   gx->menu_texture_enable = enable;


   gx->should_resize = 1;
}
