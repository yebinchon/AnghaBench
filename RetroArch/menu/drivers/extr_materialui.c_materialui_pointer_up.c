
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int menu_file_list_cbs_t ;
typedef int menu_entry_t ;
struct TYPE_9__ {int dragged; } ;
struct TYPE_10__ {unsigned int nav_bar_layout_width; int icon_size; unsigned int landscape_entry_margin; int is_dropdown_list; int is_file_list; int is_playlist; int primary_thumbnail_available; int nav_bar_layout_height; TYPE_1__ scrollbar; } ;
typedef TYPE_2__ materialui_handle_t ;
typedef enum menu_input_pointer_gesture { ____Placeholder_menu_input_pointer_gesture } menu_input_pointer_gesture ;


 int MENU_ACTION_CANCEL ;
 int MENU_ACTION_LEFT ;
 int MENU_ACTION_RIGHT ;
 int MENU_ACTION_SELECT ;
 int MENU_ACTION_START ;





 int MENU_LIST_PLAIN ;
 int MUI_THUMBNAIL_STREAM_DELAY_DEFAULT ;
 int materialui_list_get_size (TYPE_2__*,int ) ;
 int materialui_menu_entry_action (TYPE_2__*,int *,size_t,int ) ;
 int materialui_pointer_up_nav_bar (TYPE_2__*,unsigned int,unsigned int,unsigned int,unsigned int,size_t,int *,int *,unsigned int) ;
 int materialui_pointer_up_swipe_horz_default (TYPE_2__*,int *,unsigned int,size_t,size_t,int ) ;
 int materialui_pointer_up_swipe_horz_plain_list (TYPE_2__*,int *,unsigned int,unsigned int,unsigned int,size_t,int) ;
 int materialui_switch_list_view (TYPE_2__*) ;
 unsigned int menu_display_get_header_height () ;
 size_t menu_entries_get_size () ;
 int menu_input_dialog_start_search () ;
 int menu_input_set_pointer_y_accel (float) ;
 size_t menu_navigation_get_selection () ;
 int menu_navigation_set_selection (unsigned int) ;
 int menu_thumbnail_set_stream_delay (int ) ;
 int video_driver_get_size (unsigned int*,unsigned int*) ;

__attribute__((used)) static int materialui_pointer_up(void *userdata,
      unsigned x, unsigned y, unsigned ptr,
      enum menu_input_pointer_gesture gesture,
      menu_file_list_cbs_t *cbs,
      menu_entry_t *entry, unsigned action)
{
   unsigned header_height = menu_display_get_header_height();
   size_t selection = menu_navigation_get_selection();
   size_t entries_end = menu_entries_get_size();
   materialui_handle_t *mui = (materialui_handle_t*)userdata;
   unsigned width;
   unsigned height;

   if (!mui)
      return -1;



   if (mui->scrollbar.dragged)
   {


      menu_input_set_pointer_y_accel(0.0f);


      menu_thumbnail_set_stream_delay(MUI_THUMBNAIL_STREAM_DELAY_DEFAULT);

      mui->scrollbar.dragged = 0;
      return 0;
   }

   video_driver_get_size(&width, &height);

   switch (gesture)
   {
      case 128:
      case 131:
         {

            if ((y > height - mui->nav_bar_layout_height) ||
                (x > width - mui->nav_bar_layout_width))
               return materialui_pointer_up_nav_bar(
                     mui, x, y, width, height, selection, cbs, entry, action);

            else if (y < header_height)
            {


               if (mui->is_playlist || mui->is_file_list)
               {
                  bool switch_view_enabled =
                        mui->is_playlist && mui->primary_thumbnail_available;


                  unsigned back_x_threshold =
                        width -
                        ((switch_view_enabled ? 3 : 2) * mui->icon_size) -
                         mui->nav_bar_layout_width;


                  if (x > width - mui->icon_size - mui->nav_bar_layout_width)
                     return menu_input_dialog_start_search() ? 0 : -1;

                  else if (switch_view_enabled &&
                           x > width - (2 * mui->icon_size) - mui->nav_bar_layout_width)
                  {
                     materialui_switch_list_view(mui);
                     return 0;
                  }

                  else if (x <= back_x_threshold)
                     return materialui_menu_entry_action(mui, entry, selection, MENU_ACTION_CANCEL);
               }



               else
                  return materialui_menu_entry_action(mui, entry, selection, MENU_ACTION_CANCEL);
            }

            else if ((ptr < entries_end) &&
                     (x > mui->landscape_entry_margin) &&
                     (x < width - mui->landscape_entry_margin - mui->nav_bar_layout_width))
            {
               if (gesture == 128)
               {




                  if (ptr != selection)
                     menu_navigation_set_selection(ptr);



                  return materialui_menu_entry_action(mui, entry, (size_t)ptr, MENU_ACTION_SELECT);
               }
               else
               {
                  menu_navigation_set_selection(ptr);
                  menu_input_set_pointer_y_accel(0.0f);
               }
            }
         }
         break;
      case 132:

         if ((ptr < entries_end) && (ptr == selection))
            return materialui_menu_entry_action(mui, entry, selection, MENU_ACTION_START);
         break;
      case 130:
         {





            if (materialui_list_get_size(mui, MENU_LIST_PLAIN) == 1)
               return materialui_menu_entry_action(mui, entry, selection, MENU_ACTION_RIGHT);


            else if (mui->is_playlist || mui->is_file_list || mui->is_dropdown_list)
               return materialui_pointer_up_swipe_horz_plain_list(
                     mui, entry, height, header_height, y,
                     selection, 1);


            else
               return materialui_pointer_up_swipe_horz_default(
                     mui, entry, ptr, selection, entries_end, MENU_ACTION_LEFT);
         }
         break;
      case 129:
         {





            if (materialui_list_get_size(mui, MENU_LIST_PLAIN) == 1)
               return materialui_menu_entry_action(mui, entry, selection, MENU_ACTION_LEFT);


            else if (mui->is_playlist || mui->is_file_list || mui->is_dropdown_list)
               return materialui_pointer_up_swipe_horz_plain_list(
                     mui, entry, height, header_height, y,
                     selection, 0);


            else
               return materialui_pointer_up_swipe_horz_default(
                     mui, entry, ptr, selection, entries_end, MENU_ACTION_RIGHT);
         }
         break;
      default:

         break;
   }

   return 0;
}
