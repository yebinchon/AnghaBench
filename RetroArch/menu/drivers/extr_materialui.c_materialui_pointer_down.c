
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int menu_file_list_cbs_t ;
typedef int menu_entry_t ;
typedef uintptr_t menu_animation_ctx_tag ;
struct TYPE_3__ {int dragged; int x; int height; int y; scalar_t__ width; scalar_t__ active; } ;
struct TYPE_4__ {unsigned int pointer_start_x; unsigned int pointer_start_y; float touch_feedback_alpha; int touch_feedback_update_selection; unsigned int nav_bar_layout_height; int margin; int landscape_entry_margin; TYPE_1__ scrollbar; int is_portrait; int scroll_y; scalar_t__ touch_feedback_selection; int pointer_start_scroll_y; } ;
typedef TYPE_2__ materialui_handle_t ;


 int MUI_THUMBNAIL_STREAM_DELAY_SCROLLBAR_DRAG ;
 int menu_animation_kill_by_tag (uintptr_t*) ;
 unsigned int menu_display_get_header_height () ;
 int menu_input_set_pointer_y_accel (float) ;
 int menu_thumbnail_set_stream_delay (int ) ;
 int video_driver_get_size (unsigned int*,unsigned int*) ;

__attribute__((used)) static int materialui_pointer_down(void *userdata,
      unsigned x, unsigned y,
      unsigned ptr, menu_file_list_cbs_t *cbs,
      menu_entry_t *entry, unsigned action)
{
   materialui_handle_t *mui = (materialui_handle_t*)userdata;

   if (!mui)
      return -1;


   mui->pointer_start_x = x;
   mui->pointer_start_y = y;
   mui->pointer_start_scroll_y = mui->scroll_y;




   mui->touch_feedback_selection = 0;
   mui->touch_feedback_alpha = 0.0f;
   mui->touch_feedback_update_selection = 1;




   mui->scrollbar.dragged = 0;


   if (mui->scrollbar.active)
   {
      unsigned header_height = menu_display_get_header_height();
      menu_animation_ctx_tag tag = (uintptr_t)&mui->scroll_y;
      unsigned width;
      unsigned height;
      int drag_margin_horz;
      int drag_margin_vert;

      video_driver_get_size(&width, &height);



      if ((y < header_height) ||
          (y > height - mui->nav_bar_layout_height))
         return 0;



      drag_margin_horz = 2 * (int)mui->margin;






      if (!mui->is_portrait)
      {
         if (mui->landscape_entry_margin <= mui->margin)
            drag_margin_horz += (int)mui->margin;
         else if (mui->landscape_entry_margin <= 2 * mui->margin)
            drag_margin_horz += (int)((2 * mui->margin) - mui->landscape_entry_margin);
      }



      if (((int)x < mui->scrollbar.x - drag_margin_horz) ||
          ((int)x > mui->scrollbar.x + (int)mui->scrollbar.width))
         return 0;



      drag_margin_vert = 2 * (int)mui->margin;


      if (mui->scrollbar.height < mui->margin)
         drag_margin_vert += (int)(mui->margin - mui->scrollbar.height);



      if (((int)y < mui->scrollbar.y - drag_margin_vert) ||
          ((int)y > mui->scrollbar.y + (int)mui->scrollbar.height + drag_margin_vert))
         return 0;





      menu_animation_kill_by_tag(&tag);
      menu_input_set_pointer_y_accel(0.0f);


      mui->scrollbar.dragged = 1;




      menu_thumbnail_set_stream_delay(MUI_THUMBNAIL_STREAM_DELAY_SCROLLBAR_DRAG);
   }

   return 0;
}
