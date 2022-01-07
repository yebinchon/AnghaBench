
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct TYPE_5__ {scalar_t__ height; scalar_t__ width; } ;
typedef TYPE_1__ menu_display_ctx_draw_t ;
struct TYPE_6__ {int (* draw ) (TYPE_1__*,int *) ;} ;


 TYPE_4__* menu_disp ;
 int menu_display_blend_begin (int *) ;
 int menu_display_blend_end (int *) ;
 int stub1 (TYPE_1__*,int *) ;

void menu_display_draw_blend(menu_display_ctx_draw_t *draw,
      video_frame_info_t *video_info)
{
   if (!menu_disp || !draw || !menu_disp->draw)
      return;

   if (draw->height <= 0)
      return;
   if (draw->width <= 0)
      return;
   menu_display_blend_begin(video_info);
   menu_disp->draw(draw, video_info);
   menu_display_blend_end(video_info);
}
