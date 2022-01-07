
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int menu_wallpaper_opacity; } ;
typedef TYPE_1__ video_frame_info_t ;
struct TYPE_10__ {scalar_t__ y; scalar_t__ x; scalar_t__ texture; } ;
typedef TYPE_2__ menu_display_ctx_draw_t ;


 int menu_display_draw (TYPE_2__*,TYPE_1__*) ;
 int menu_display_draw_bg (TYPE_2__*,TYPE_1__*,int,int ) ;

void menu_display_draw_gradient(menu_display_ctx_draw_t *draw,
      video_frame_info_t *video_info)
{
   draw->texture = 0;
   draw->x = 0;
   draw->y = 0;

   menu_display_draw_bg(draw, video_info, 0,
         video_info->menu_wallpaper_opacity);
   menu_display_draw(draw, video_info);
}
