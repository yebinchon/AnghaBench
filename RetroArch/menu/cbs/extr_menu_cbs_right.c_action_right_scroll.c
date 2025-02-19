
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX (size_t,int) ;
 int MENU_NAVIGATION_CTL_GET_SCROLL_ACCEL ;
 int MENU_NAVIGATION_CTL_SET_LAST ;
 int menu_driver_ctl (int ,size_t*) ;
 int menu_driver_navigation_set (int) ;
 size_t menu_entries_get_size () ;
 size_t menu_navigation_get_selection () ;
 int menu_navigation_set_selection (size_t) ;

__attribute__((used)) static int action_right_scroll(unsigned type, const char *label,
      bool wraparound)
{
   size_t scroll_accel = 0;
   unsigned scroll_speed = 0, fast_scroll_speed = 0;
   size_t selection = menu_navigation_get_selection();

   if (!menu_driver_ctl(MENU_NAVIGATION_CTL_GET_SCROLL_ACCEL, &scroll_accel))
      return 0;

   scroll_speed = (unsigned)((MAX(scroll_accel, 2) - 2) / 4 + 1);
   fast_scroll_speed = 4 + 4 * scroll_speed;

   if (selection + fast_scroll_speed < (menu_entries_get_size()))
   {
      size_t idx = selection + fast_scroll_speed;

      menu_navigation_set_selection(idx);
      menu_driver_navigation_set(1);
   }
   else
   {
      if ((menu_entries_get_size() > 0))
         menu_driver_ctl(MENU_NAVIGATION_CTL_SET_LAST, ((void*)0));
   }

   return 0;
}
