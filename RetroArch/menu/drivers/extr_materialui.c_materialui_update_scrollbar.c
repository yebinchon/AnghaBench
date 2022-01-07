
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int x; int y; scalar_t__ width; scalar_t__ height; scalar_t__ active; } ;
struct TYPE_5__ {scalar_t__ landscape_entry_margin; scalar_t__ margin; float scroll_y; float content_height; TYPE_1__ scrollbar; scalar_t__ nav_bar_layout_width; scalar_t__ nav_bar_layout_height; } ;
typedef TYPE_2__ materialui_handle_t ;



__attribute__((used)) static void materialui_update_scrollbar(
      materialui_handle_t *mui,
      unsigned width, unsigned height,
      unsigned header_height, int x_offset)
{

   if (mui->scrollbar.active)
   {
      int view_height = (int)height - (int)header_height - (int)mui->nav_bar_layout_height;
      int y_max = view_height + (int)header_height - (int)(mui->scrollbar.width + mui->scrollbar.height);


      mui->scrollbar.x = x_offset + (int)width - (int)mui->scrollbar.width - (int)mui->nav_bar_layout_width;




      if (mui->landscape_entry_margin > mui->margin)
         mui->scrollbar.x -= (int)mui->landscape_entry_margin - (int)mui->margin;


      mui->scrollbar.y = (int)header_height + (int)(mui->scroll_y * (float)view_height / mui->content_height);


      mui->scrollbar.y += (int)mui->scrollbar.width;


      mui->scrollbar.y = (mui->scrollbar.y > y_max) ? y_max : mui->scrollbar.y;
   }
}
