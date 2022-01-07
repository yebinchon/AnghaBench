
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct TYPE_4__ {int landscape_border_shadow_right; int landscape_border_shadow_left; } ;
struct TYPE_5__ {scalar_t__ landscape_entry_margin; scalar_t__ margin; unsigned int nav_bar_layout_height; TYPE_1__ colors; scalar_t__ nav_bar_layout_width; } ;
typedef TYPE_2__ materialui_handle_t ;


 int menu_display_draw_quad (int *,int,int,unsigned int,unsigned int,unsigned int,unsigned int,int ) ;

__attribute__((used)) static void materialui_render_landscape_border(
      materialui_handle_t *mui, video_frame_info_t *video_info,
      unsigned width, unsigned height, unsigned header_height, int x_offset)
{
   if (mui->landscape_entry_margin > mui->margin)
   {
      unsigned border_width = mui->landscape_entry_margin - mui->margin;
      unsigned border_height = height - header_height - mui->nav_bar_layout_height;
      int left_x = x_offset;
      int right_x =
            x_offset + (int)width - (int)mui->landscape_entry_margin +
                  (int)mui->margin - (int)mui->nav_bar_layout_width;
      int y = (int)header_height;


      menu_display_draw_quad(
            video_info,
            left_x,
            y,
            border_width,
            border_height,
            width,
            height,
            mui->colors.landscape_border_shadow_left);


      menu_display_draw_quad(
            video_info,
            right_x,
            y,
            border_width,
            border_height,
            width,
            height,
            mui->colors.landscape_border_shadow_right);
   }
}
