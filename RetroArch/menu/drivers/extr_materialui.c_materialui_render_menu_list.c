
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct TYPE_15__ {int path_enabled; int value_enabled; int sublabel_enabled; } ;
typedef TYPE_2__ menu_entry_t ;
typedef int materialui_node_t ;
struct TYPE_14__ {int dragged; } ;
struct TYPE_16__ {float touch_feedback_alpha; size_t touch_feedback_selection; size_t first_onscreen_entry; size_t last_onscreen_entry; int list_view_type; TYPE_1__ scrollbar; } ;
typedef TYPE_3__ materialui_handle_t ;
typedef int file_list_t ;
 scalar_t__ file_list_get_userdata_at_offset (int *,size_t) ;
 int materialui_render_menu_entry_default (TYPE_3__*,int *,int *,TYPE_2__*,int,int,unsigned int,unsigned int,unsigned int,int) ;
 int materialui_render_menu_entry_playlist_dual_icon (TYPE_3__*,int *,int *,TYPE_2__*,int,int,unsigned int,unsigned int,unsigned int,int) ;
 int materialui_render_menu_entry_playlist_list (TYPE_3__*,int *,int *,TYPE_2__*,int,int,unsigned int,unsigned int,unsigned int,int) ;
 int materialui_render_scrollbar (TYPE_3__*,int *,unsigned int,unsigned int) ;
 unsigned int menu_display_get_header_height () ;
 int * menu_entries_get_selection_buf_ptr (int ) ;
 size_t menu_entries_get_size () ;
 int menu_entry_get (TYPE_2__*,int ,size_t,int *,int) ;
 int menu_entry_init (TYPE_2__*) ;
 size_t menu_input_get_pointer_selection () ;
 size_t menu_navigation_get_selection () ;

__attribute__((used)) static void materialui_render_menu_list(
      materialui_handle_t *mui,
      video_frame_info_t *video_info,
      unsigned width, unsigned height,
      int x_offset)
{
   size_t i;
   size_t first_entry;
   size_t last_entry;
   file_list_t *list = ((void*)0);
   size_t entries_end = menu_entries_get_size();
   unsigned header_height = menu_display_get_header_height();
   size_t selection = menu_navigation_get_selection();
   bool touch_feedback_enabled =
         !mui->scrollbar.dragged &&
         (mui->touch_feedback_alpha >= 0.5f) &&
         (mui->touch_feedback_selection == menu_input_get_pointer_selection());

   list = menu_entries_get_selection_buf_ptr(0);
   if (!list)
      return;


   first_entry = (mui->first_onscreen_entry < entries_end) ? mui->first_onscreen_entry : entries_end;
   last_entry = (mui->last_onscreen_entry < entries_end) ? mui->last_onscreen_entry : entries_end;

   for (i = first_entry; i <= last_entry; i++)
   {
      bool entry_selected = (selection == i);
      bool touch_feedback_active = touch_feedback_enabled && (mui->touch_feedback_selection == i);
      materialui_node_t *node = (materialui_node_t*)file_list_get_userdata_at_offset(list, i);
      menu_entry_t entry;


      if (!node)
         break;


      menu_entry_init(&entry);
      entry.path_enabled = 0;
      entry.value_enabled = (mui->list_view_type == 133);
      entry.sublabel_enabled = (mui->list_view_type != 131);
      menu_entry_get(&entry, 0, i, ((void*)0), 1);
      switch (mui->list_view_type)
      {
         case 132:
         case 128:
         case 129:
         case 130:
            materialui_render_menu_entry_playlist_list(
                  mui,
                  video_info,
                  node,
                  &entry,
                  entry_selected,
                  touch_feedback_active,
                  header_height,
                  width,
                  height,
                  x_offset);
            break;
         case 131:
            materialui_render_menu_entry_playlist_dual_icon(
                  mui,
                  video_info,
                  node,
                  &entry,
                  entry_selected,
                  touch_feedback_active,
                  header_height,
                  width,
                  height,
                  x_offset);
            break;
         case 133:
         default:
            materialui_render_menu_entry_default(
                  mui,
                  video_info,
                  node,
                  &entry,
                  entry_selected,
                  touch_feedback_active,
                  header_height,
                  width,
                  height,
                  x_offset);
            break;
      }
   }


   materialui_render_scrollbar(
         mui, video_info, width, height);
}
