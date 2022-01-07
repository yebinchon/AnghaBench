
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int height; int width; } ;
typedef TYPE_1__ video_frame_info_t ;


 int menu_display_draw_quad (TYPE_1__*,int ,int ,int ,int ,int ,int ,int ) ;
 int menu_display_set_alpha (int ,float) ;
 int menu_widgets_backdrop ;

__attribute__((used)) static void menu_widgets_draw_backdrop(video_frame_info_t *video_info, float alpha)
{
   menu_display_set_alpha(menu_widgets_backdrop, alpha);
   menu_display_draw_quad(video_info, 0, 0, video_info->width, video_info->height, video_info->width, video_info->height, menu_widgets_backdrop);
}
