
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int action_select; } ;
typedef TYPE_1__ menu_file_list_cbs_t ;
typedef int menu_entry_t ;
typedef enum menu_input_pointer_gesture { ____Placeholder_menu_input_pointer_gesture } menu_input_pointer_gesture ;


 int MENU_ACTION_CANCEL ;
 int MENU_ACTION_SELECT ;
 int MENU_ACTION_START ;



 unsigned int menu_display_get_header_height () ;
 int menu_driver_navigation_set (int) ;
 int menu_entries_get_size () ;
 int menu_entry_action (int *,size_t,int ) ;
 size_t menu_navigation_get_selection () ;
 int menu_navigation_set_selection (unsigned int) ;

__attribute__((used)) static int stripes_pointer_up(void *userdata,
      unsigned x, unsigned y, unsigned ptr,
      enum menu_input_pointer_gesture gesture,
      menu_file_list_cbs_t *cbs,
      menu_entry_t *entry, unsigned action)
{
   size_t selection = menu_navigation_get_selection();

   switch (gesture)
   {
      case 128:
      case 129:
         {

            unsigned header_height = menu_display_get_header_height();

            if (y < header_height)
               return (unsigned)menu_entry_action(entry, selection, MENU_ACTION_CANCEL);
            else if (ptr <= (menu_entries_get_size() - 1))
            {
               if (ptr == selection && cbs && cbs->action_select)
                  return (unsigned)menu_entry_action(entry, selection, MENU_ACTION_SELECT);

               menu_navigation_set_selection(ptr);
               menu_driver_navigation_set(0);
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
