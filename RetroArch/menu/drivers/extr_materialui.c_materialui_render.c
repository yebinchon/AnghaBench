
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct TYPE_21__ {scalar_t__ menu_materialui_auto_rotate_nav_bar; } ;
struct TYPE_20__ {scalar_t__ menu_materialui_landscape_layout_optimization; } ;
struct TYPE_26__ {TYPE_3__ bools; TYPE_2__ uints; } ;
typedef TYPE_8__ settings_t ;
typedef uintptr_t menu_animation_ctx_tag ;
struct TYPE_19__ {int primary; int secondary; } ;
struct TYPE_27__ {float y; int entry_height; TYPE_1__ thumbnails; } ;
typedef TYPE_9__ materialui_node_t ;
struct TYPE_18__ {scalar_t__ type; scalar_t__ y; scalar_t__ x; scalar_t__ press_duration; int dragged; scalar_t__ pressed; scalar_t__ y_accel; } ;
struct TYPE_25__ {int width; scalar_t__ dragged; scalar_t__ height; } ;
struct TYPE_23__ {scalar_t__ font; } ;
struct TYPE_22__ {scalar_t__ font; } ;
struct TYPE_24__ {TYPE_5__ hint; TYPE_4__ list; } ;
struct TYPE_17__ {float last_scale_factor; unsigned int last_width; unsigned int last_height; int last_landscape_layout_optimization; scalar_t__ last_auto_rotate_nav_bar; float dip_base_unit_size; int need_compute; float scroll_y; unsigned int nav_bar_layout_height; float content_height; size_t first_onscreen_entry; size_t last_onscreen_entry; scalar_t__ landscape_entry_margin; unsigned int nav_bar_layout_width; int touch_feedback_update_selection; size_t touch_feedback_selection; scalar_t__ list_view_type; int playlist; int thumbnail_path_data; scalar_t__ secondary_thumbnail_enabled; TYPE_11__ pointer; TYPE_7__ scrollbar; TYPE_6__ font_data; } ;
typedef TYPE_10__ materialui_handle_t ;
typedef scalar_t__ int16_t ;
typedef int file_list_t ;
typedef enum materialui_landscape_layout_optimization_type { ____Placeholder_materialui_landscape_layout_optimization_type } materialui_landscape_layout_optimization_type ;


 int MENU_ENTRIES_CTL_SET_START ;
 scalar_t__ MENU_INPUT_PRESS_TIME_SHORT ;
 scalar_t__ MENU_POINTER_DISABLED ;
 int MENU_THUMBNAIL_RIGHT ;
 float MUI_DIP_BASE_UNIT_SIZE ;
 scalar_t__ MUI_LIST_VIEW_DEFAULT ;
 scalar_t__ MUI_LIST_VIEW_PLAYLIST ;
 int MUI_ONSCREEN_ENTRY_CENTRE ;
 TYPE_8__* config_get_ptr () ;
 scalar_t__ file_list_get_userdata_at_offset (int *,size_t) ;
 int materialui_auto_select_onscreen_entry (TYPE_10__*,int ) ;
 int materialui_compute_entries_box (TYPE_10__*,unsigned int,unsigned int,unsigned int) ;
 float materialui_get_scroll (TYPE_10__*) ;
 int materialui_layout (TYPE_10__*,int ) ;
 int menu_animation_kill_by_tag (uintptr_t*) ;
 float menu_display_get_dpi_scale (unsigned int,unsigned int) ;
 unsigned int menu_display_get_header_height () ;
 int menu_display_set_height (unsigned int) ;
 int menu_display_set_width (unsigned int) ;
 int menu_entries_ctl (int ,size_t*) ;
 int * menu_entries_get_selection_buf_ptr (int ) ;
 size_t menu_entries_get_size () ;
 int menu_input_get_pointer_state (TYPE_11__*) ;
 int menu_input_set_pointer_selection (size_t) ;
 int menu_input_set_pointer_y_accel (float) ;
 int menu_navigation_set_selection (size_t) ;
 int menu_thumbnail_process_stream (int ,int ,int ,size_t,int *,int) ;
 int menu_thumbnail_process_streams (int ,int ,size_t,int *,int *,int) ;
 int video_driver_is_threaded () ;
 int video_driver_monitor_reset () ;

__attribute__((used)) static void materialui_render(void *data,
      unsigned width, unsigned height,
      bool is_idle)
{
   settings_t *settings = config_get_ptr();
   materialui_handle_t *mui = (materialui_handle_t*)data;
   unsigned header_height = menu_display_get_header_height();
   size_t entries_end = menu_entries_get_size();
   file_list_t *list = menu_entries_get_selection_buf_ptr(0);
   bool first_entry_found = 0;
   bool last_entry_found = 0;
   size_t i;
   float bottom;
   float scale_factor;

   if (!settings || !mui || !list)
      return;



   scale_factor = menu_display_get_dpi_scale(width, height);

   if ((scale_factor != mui->last_scale_factor) ||
       (width != mui->last_width) ||
       (height != mui->last_height) ||
       ((enum materialui_landscape_layout_optimization_type)
            settings->uints.menu_materialui_landscape_layout_optimization !=
                  mui->last_landscape_layout_optimization) ||
       (settings->bools.menu_materialui_auto_rotate_nav_bar != mui->last_auto_rotate_nav_bar))
   {
      mui->dip_base_unit_size = scale_factor * MUI_DIP_BASE_UNIT_SIZE;
      mui->last_scale_factor = scale_factor;
      mui->last_width = width;
      mui->last_height = height;
      mui->last_landscape_layout_optimization =
            (enum materialui_landscape_layout_optimization_type)
                  settings->uints.menu_materialui_landscape_layout_optimization;
      mui->last_auto_rotate_nav_bar = settings->bools.menu_materialui_auto_rotate_nav_bar;
      materialui_auto_select_onscreen_entry(mui, MUI_ONSCREEN_ENTRY_CENTRE);



      materialui_layout(mui, video_driver_is_threaded());
      video_driver_monitor_reset();
   }

   if (mui->need_compute)
   {
      menu_animation_ctx_tag tag = (uintptr_t)&mui->scroll_y;

      if (mui->font_data.list.font && mui->font_data.hint.font)
         materialui_compute_entries_box(mui, width, height, header_height);
      menu_animation_kill_by_tag(&tag);


      menu_input_set_pointer_y_accel(0.0f);


      mui->scroll_y = materialui_get_scroll(mui);
      mui->need_compute = 0;
   }



   menu_display_set_width(width);
   menu_display_set_height(height);


   menu_input_get_pointer_state(&mui->pointer);




   if (mui->pointer.type != MENU_POINTER_DISABLED)
   {



      if (mui->scrollbar.dragged)
      {
         float view_height = (float)height - (float)header_height - (float)mui->nav_bar_layout_height;
         float view_y = (float)mui->pointer.y - (float)header_height;
         float y_scroll_max = mui->content_height - view_height;






         view_y -= (float)mui->scrollbar.width + ((float)mui->scrollbar.height / 2.0f);
         view_height -= (float)((2 * mui->scrollbar.width) + mui->scrollbar.height);

         if (view_height > 0.0f)
            mui->scroll_y = y_scroll_max * (view_y / view_height);
         else
            mui->scroll_y = 0.0f;
      }


      else
         mui->scroll_y -= mui->pointer.y_accel;
   }

   if (mui->scroll_y < 0.0f)
      mui->scroll_y = 0.0f;

   bottom = mui->content_height - (float)height + (float)header_height + (float)mui->nav_bar_layout_height;
   if (mui->scroll_y > bottom)
      mui->scroll_y = bottom;

   if (mui->content_height < (height - header_height - mui->nav_bar_layout_height))
      mui->scroll_y = 0.0f;


   mui->first_onscreen_entry = 0;
   mui->last_onscreen_entry = (entries_end > 0) ? entries_end - 1 : 0;

   for (i = 0; i < entries_end; i++)
   {
      materialui_node_t *node = (materialui_node_t*)
            file_list_get_userdata_at_offset(list, i);
      int entry_y;


      if (!node)
         break;


      entry_y = (int)((float)header_height - mui->scroll_y + node->y);


      if (!first_entry_found)
      {
         if ((entry_y + (int)node->entry_height) > (int)header_height)
         {
            mui->first_onscreen_entry = i;
            first_entry_found = 1;
         }
      }

      else if (!last_entry_found)
      {
         if (entry_y > ((int)height - (int)mui->nav_bar_layout_height))
         {


            if (i > 0)
            {
               mui->last_onscreen_entry = i - 1;
               last_entry_found = 1;
            }
         }
      }


      if (first_entry_found &&
          !last_entry_found &&
          (mui->pointer.type != MENU_POINTER_DISABLED) &&
          !mui->scrollbar.dragged)
      {
         int16_t pointer_x = mui->pointer.x;
         int16_t pointer_y = mui->pointer.y;




         if ((pointer_x > mui->landscape_entry_margin) &&
             (pointer_x < width - mui->landscape_entry_margin - mui->nav_bar_layout_width) &&
             (pointer_y >= header_height) &&
             (pointer_y <= height - mui->nav_bar_layout_height))
         {


            if ((pointer_y > entry_y) &&
                (pointer_y < (entry_y + node->entry_height)))
            {

               menu_input_set_pointer_selection(i);


               if (mui->pointer.pressed && !mui->pointer.dragged)
               {


                  if (mui->touch_feedback_update_selection)
                  {

                     mui->touch_feedback_selection = i;




                     if (mui->pointer.press_duration >= MENU_INPUT_PRESS_TIME_SHORT)
                     {
                        menu_navigation_set_selection(i);




                        mui->touch_feedback_update_selection = 0;
                     }
                  }
               }
            }
         }
      }




      if ((mui->list_view_type != MUI_LIST_VIEW_DEFAULT) &&
          (mui->list_view_type != MUI_LIST_VIEW_PLAYLIST))
      {
         bool on_screen = first_entry_found && !last_entry_found;

         if (mui->secondary_thumbnail_enabled)
            menu_thumbnail_process_streams(
               mui->thumbnail_path_data, mui->playlist, i,
               &node->thumbnails.primary, &node->thumbnails.secondary,
               on_screen);
         else
            menu_thumbnail_process_stream(
                  mui->thumbnail_path_data, MENU_THUMBNAIL_RIGHT,
                  mui->playlist, i, &node->thumbnails.primary, on_screen);
      }
      else if (last_entry_found)
         break;
   }

   menu_entries_ctl(MENU_ENTRIES_CTL_SET_START, &mui->first_onscreen_entry);
}
