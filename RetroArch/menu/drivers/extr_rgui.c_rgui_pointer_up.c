
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ thumbnail_queue_size; scalar_t__ entry_has_thumbnail; int show_fs_thumbnail; } ;
typedef TYPE_1__ rgui_t ;
typedef int menu_file_list_cbs_t ;
typedef int menu_entry_t ;
typedef enum menu_input_pointer_gesture { ____Placeholder_menu_input_pointer_gesture } menu_input_pointer_gesture ;
struct TYPE_5__ {scalar_t__ is_valid; } ;


 int MENU_ACTION_CANCEL ;
 int MENU_ACTION_SELECT ;
 int MENU_ACTION_START ;



 TYPE_3__ fs_thumbnail ;
 unsigned int menu_display_get_header_height () ;
 int menu_driver_navigation_set (int) ;
 int menu_entries_get_size () ;
 int menu_entry_action (int *,size_t,int ) ;
 size_t menu_navigation_get_selection () ;
 int menu_navigation_set_selection (unsigned int) ;
 int rgui_update_thumbnail_image (TYPE_1__*) ;

__attribute__((used)) static int rgui_pointer_up(void *data,
      unsigned x, unsigned y, unsigned ptr,
      enum menu_input_pointer_gesture gesture,
      menu_file_list_cbs_t *cbs,
      menu_entry_t *entry, unsigned action)
{
   rgui_t *rgui = (rgui_t*)data;
   unsigned header_height = menu_display_get_header_height();
   size_t selection = menu_navigation_get_selection();
   bool show_fs_thumbnail = 0;

   if (!rgui)
      return -1;

   show_fs_thumbnail =
         rgui->show_fs_thumbnail &&
         rgui->entry_has_thumbnail &&
         (fs_thumbnail.is_valid || (rgui->thumbnail_queue_size > 0));

   switch (gesture)
   {
      case 128:
      case 129:
         {

            if (show_fs_thumbnail)
            {




               if (y < header_height)
                  rgui_update_thumbnail_image(rgui);
               else
                  return menu_entry_action(entry, selection, MENU_ACTION_SELECT);
            }
            else
            {
               if (y < header_height)
                  return menu_entry_action(entry, selection, MENU_ACTION_CANCEL);
               else if (ptr <= (menu_entries_get_size() - 1))
               {


                  if (ptr == selection)
                     return menu_entry_action(entry, selection, MENU_ACTION_SELECT);



                  menu_navigation_set_selection(ptr);
                  menu_driver_navigation_set(0);
               }
            }
         }
         break;
      case 130:

         if ((ptr <= (menu_entries_get_size() - 1)) &&
             (ptr == selection))
            return menu_entry_action(entry, selection, MENU_ACTION_START);
         break;
      default:

         break;
   }

   return 0;
}
