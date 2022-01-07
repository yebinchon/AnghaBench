
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float margins_screen_top; float margins_screen_left; int depth; } ;
typedef TYPE_1__ xmb_handle_t ;
typedef int menu_file_list_cbs_t ;
typedef int menu_entry_t ;
typedef unsigned int int16_t ;
typedef enum menu_input_pointer_gesture { ____Placeholder_menu_input_pointer_gesture } menu_input_pointer_gesture ;


 int MENU_ACTION_CANCEL ;
 int MENU_ACTION_LEFT ;
 int MENU_ACTION_RIGHT ;
 int MENU_ACTION_SCROLL_DOWN ;
 int MENU_ACTION_SCROLL_UP ;
 int MENU_ACTION_SELECT ;
 int MENU_ACTION_START ;







 int MENU_NAVIGATION_CTL_CLEAR ;
 int MENU_NAVIGATION_CTL_SET_LAST ;
 int menu_driver_ctl (int ,int*) ;
 int menu_driver_navigation_set (int) ;
 int menu_entries_get_size () ;
 int menu_entry_action (int *,size_t,int ) ;
 int menu_input_dialog_start_search () ;
 size_t menu_navigation_get_selection () ;
 int menu_navigation_set_selection (size_t) ;
 int video_driver_get_size (unsigned int*,unsigned int*) ;
 int xmb_calculate_visible_range (TYPE_1__*,unsigned int,unsigned int,unsigned int,unsigned int*,unsigned int*) ;
 float xmb_item_y (TYPE_1__*,unsigned int,size_t) ;

__attribute__((used)) static int xmb_pointer_up(void *userdata,
      unsigned x, unsigned y, unsigned ptr,
      enum menu_input_pointer_gesture gesture,
      menu_file_list_cbs_t *cbs,
      menu_entry_t *entry, unsigned action)
{
   xmb_handle_t *xmb = (xmb_handle_t*)userdata;
   size_t selection = menu_navigation_get_selection();
   unsigned end = (unsigned)menu_entries_get_size();
   unsigned width;
   unsigned height;
   int16_t margin_top;
   int16_t margin_left;
   int16_t margin_right;

   if (!xmb)
      return -1;

   video_driver_get_size(&width, &height);
   margin_top = (int16_t)xmb->margins_screen_top;
   margin_left = (int16_t)xmb->margins_screen_left;
   margin_right = (int16_t)((float)width - xmb->margins_screen_left);

   switch (gesture)
   {
      case 128:
      case 133:






         if (x < margin_left)
         {
            if (y >= margin_top)
               return menu_entry_action(entry, selection, MENU_ACTION_CANCEL);
            else
               return menu_input_dialog_start_search() ? 0 : -1;
         }
         else if (x > margin_right)
            return menu_entry_action(entry, selection, MENU_ACTION_SELECT);
         else if (ptr <= (end - 1))
         {

            if (ptr == selection)
               return menu_entry_action(entry, selection, MENU_ACTION_SELECT);


            menu_navigation_set_selection(ptr);
            menu_driver_navigation_set(0);
         }
         break;
      case 134:

         if ((ptr <= end - 1) && (ptr == selection))
            return menu_entry_action(entry, selection, MENU_ACTION_START);
         break;
      case 131:




         if (y > margin_top)
            menu_entry_action(
                  entry, selection, (xmb->depth == 1) ? MENU_ACTION_RIGHT : MENU_ACTION_LEFT);
         break;
      case 130:




         if (y > margin_top)
            menu_entry_action(
                  entry, selection, (xmb->depth == 1) ? MENU_ACTION_LEFT : MENU_ACTION_RIGHT);
         break;
      case 129:

         if (x < margin_left)
            menu_entry_action(entry, selection, MENU_ACTION_SCROLL_DOWN);
         else if (x < margin_right)
         {


            unsigned first = 0;
            unsigned last = end;

            if (height)
               xmb_calculate_visible_range(xmb, height,
                     end, (unsigned)selection, &first, &last);

            if (last < end)
            {
               menu_navigation_set_selection((size_t)last);
               menu_driver_navigation_set(1);
            }
            else
               menu_driver_ctl(MENU_NAVIGATION_CTL_SET_LAST, ((void*)0));
         }
         break;
      case 132:

         if (x < margin_left)
            menu_entry_action(entry, selection, MENU_ACTION_SCROLL_UP);
         else if (x < margin_right)
         {


            unsigned bottom_idx = (unsigned)selection + 1;
            size_t new_idx;
            unsigned step;







            while (1)
            {
               float top = xmb_item_y(xmb, bottom_idx, selection) + xmb->margins_screen_top;

               if (top > height)
               {



                  bottom_idx--;
                  break;
               }

               bottom_idx++;
            }

            step = (bottom_idx >= selection) ? bottom_idx - selection : 0;
            new_idx = (selection > step) ? selection - step : 0;

            if (new_idx > 0)
            {
               menu_navigation_set_selection(new_idx);
               menu_driver_navigation_set(1);
            }
            else
            {
               bool pending_push = 0;
               menu_driver_ctl(MENU_NAVIGATION_CTL_CLEAR, &pending_push);
            }
         }
         break;
      default:

         break;
   }

   return 0;
}
