
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int video_frame_info_t ;
typedef int menu_display_ctx_clearcolor_t ;
struct TYPE_2__ {int (* clear_color ) (int *,int *) ;} ;


 TYPE_1__* menu_disp ;
 int stub1 (int *,int *) ;

void menu_display_clear_color(menu_display_ctx_clearcolor_t *color,
      video_frame_info_t *video_info)
{
   if (menu_disp && menu_disp->clear_color)
      menu_disp->clear_color(color, video_info);
}
