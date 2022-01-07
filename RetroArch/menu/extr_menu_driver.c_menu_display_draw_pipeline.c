
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int video_frame_info_t ;
typedef int menu_display_ctx_draw_t ;
struct TYPE_2__ {int (* draw_pipeline ) (int *,int *) ;} ;


 TYPE_1__* menu_disp ;
 int stub1 (int *,int *) ;

void menu_display_draw_pipeline(menu_display_ctx_draw_t *draw,
      video_frame_info_t *video_info)
{
   if (menu_disp && draw && menu_disp->draw_pipeline)
      menu_disp->draw_pipeline(draw, video_info);
}
