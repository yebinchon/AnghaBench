
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct TYPE_9__ {int list_highlighted_background; } ;
struct TYPE_8__ {scalar_t__ x; unsigned int y; scalar_t__ press_duration; int dragged; scalar_t__ pressed; } ;
struct TYPE_7__ {int dragged; } ;
struct TYPE_10__ {size_t touch_feedback_selection; scalar_t__ landscape_entry_margin; unsigned int nav_bar_layout_width; unsigned int nav_bar_layout_height; float touch_feedback_alpha; int transition_alpha; TYPE_3__ colors; TYPE_2__ pointer; TYPE_1__ scrollbar; } ;
typedef TYPE_4__ materialui_handle_t ;
typedef int higlight_color ;


 scalar_t__ MENU_INPUT_PRESS_TIME_SHORT ;
 int materialui_render_selection_highlight (TYPE_4__*,int *,unsigned int,unsigned int,unsigned int,int,size_t,float*) ;
 int memcpy (float*,int ,int) ;
 float menu_animation_get_delta_time () ;
 int menu_display_set_alpha (float*,int) ;
 size_t menu_input_get_pointer_selection () ;

__attribute__((used)) static void materialui_render_entry_touch_feedback(
      materialui_handle_t *mui, video_frame_info_t *video_info,
      unsigned width, unsigned height, unsigned header_height, int x_offset,
      size_t current_selection)
{


   bool pointer_active =
         (!mui->scrollbar.dragged &&
          mui->pointer.pressed &&
          !mui->pointer.dragged);






   if (pointer_active)
      pointer_active = (mui->touch_feedback_selection == menu_input_get_pointer_selection()) &&
                       (mui->pointer.x > mui->landscape_entry_margin) &&
                       (mui->pointer.x < width - mui->landscape_entry_margin - mui->nav_bar_layout_width) &&
                       (mui->pointer.y >= header_height) &&
                       (mui->pointer.y <= height - mui->nav_bar_layout_height);



   if (pointer_active)
   {




      if (mui->touch_feedback_selection == current_selection)
      {
         mui->touch_feedback_alpha = 0.0f;
         return;
      }


      mui->touch_feedback_alpha = (float)mui->pointer.press_duration / (float)MENU_INPUT_PRESS_TIME_SHORT;
      mui->touch_feedback_alpha = (mui->touch_feedback_alpha > 1.0f) ? 1.0f : mui->touch_feedback_alpha;
   }



   else if (mui->touch_feedback_alpha > 0.0f)
   {
      mui->touch_feedback_alpha -= (menu_animation_get_delta_time() * 1000.0f) / (float)MENU_INPUT_PRESS_TIME_SHORT;
      mui->touch_feedback_alpha = (mui->touch_feedback_alpha < 0.0f) ? 0.0f : mui->touch_feedback_alpha;
   }



   if (mui->touch_feedback_alpha > 0.0f)
   {
      float higlight_color[16];


      memcpy(higlight_color, mui->colors.list_highlighted_background, sizeof(higlight_color));
      menu_display_set_alpha(higlight_color, mui->transition_alpha * mui->touch_feedback_alpha);


      materialui_render_selection_highlight(
            mui, video_info, width, height, header_height, x_offset,
            mui->touch_feedback_selection,
            higlight_color);
   }
}
