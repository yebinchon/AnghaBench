
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct TYPE_6__ {scalar_t__ location; } ;
struct TYPE_7__ {TYPE_1__ nav_bar; } ;
typedef TYPE_2__ materialui_handle_t ;


 scalar_t__ MUI_NAV_BAR_LOCATION_RIGHT ;
 int materialui_render_nav_bar_bottom (TYPE_2__*,int *,unsigned int,unsigned int) ;
 int materialui_render_nav_bar_right (TYPE_2__*,int *,unsigned int,unsigned int) ;

__attribute__((used)) static void materialui_render_nav_bar(
      materialui_handle_t *mui, video_frame_info_t *video_info,
      unsigned width, unsigned height)
{
   if (mui->nav_bar.location == MUI_NAV_BAR_LOCATION_RIGHT)
      materialui_render_nav_bar_right(
            mui, video_info, width, height);
   else
      materialui_render_nav_bar_bottom(
            mui, video_info, width, height);
}
