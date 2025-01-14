
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct TYPE_5__ {float y; scalar_t__ entry_height; } ;
typedef TYPE_1__ materialui_node_t ;
struct TYPE_6__ {int landscape_entry_margin; int margin; float scroll_y; scalar_t__ nav_bar_layout_width; } ;
typedef TYPE_2__ materialui_handle_t ;
typedef int file_list_t ;


 scalar_t__ file_list_get_userdata_at_offset (int *,size_t) ;
 scalar_t__ materialui_entry_onscreen (TYPE_2__*,size_t) ;
 int menu_display_draw_quad (int *,int,int,unsigned int,unsigned int,unsigned int,unsigned int,float*) ;
 int * menu_entries_get_selection_buf_ptr (int ) ;

__attribute__((used)) static void materialui_render_selection_highlight(
      materialui_handle_t *mui, video_frame_info_t *video_info,
      unsigned width, unsigned height, unsigned header_height, int x_offset,
      size_t selection, float *color)
{

   if (materialui_entry_onscreen(mui, selection))
   {
      file_list_t *list = ((void*)0);
      materialui_node_t *node = ((void*)0);
      int highlight_x = x_offset;
      int highlight_y = 0;
      int highlight_width = (int)width - (int)mui->nav_bar_layout_width;
      int highlight_height = 0;



      if (mui->landscape_entry_margin > 0)
      {
         highlight_x += (int)mui->landscape_entry_margin - (int)mui->margin;
         highlight_width -= (int)(2 * mui->landscape_entry_margin) - (int)(2 * mui->margin);
         highlight_width = (highlight_width < 0) ? 0 : highlight_width;
      }

      list = menu_entries_get_selection_buf_ptr(0);
      if (!list)
         return;

      node = (materialui_node_t*)file_list_get_userdata_at_offset(list, selection);
      if (!node)
         return;







      highlight_y = (int)((float)header_height - mui->scroll_y + node->y);
      highlight_height = (int)(node->entry_height + 1.5f);


      menu_display_draw_quad(
            video_info,
            highlight_x,
            highlight_y,
            (unsigned)highlight_width,
            (unsigned)highlight_height,
            width,
            height,
            color);
   }
}
