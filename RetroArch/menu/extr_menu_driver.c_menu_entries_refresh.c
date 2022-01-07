
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ size; } ;
typedef TYPE_1__ file_list_t ;


 int MENU_NAVIGATION_CTL_CLEAR ;
 int menu_driver_ctl (int ,int*) ;
 int menu_driver_navigation_set (int) ;
 size_t menu_driver_selection_ptr ;
 int menu_entries_build_scroll_indices (TYPE_1__*) ;
 size_t menu_entries_get_size () ;

__attribute__((used)) static bool menu_entries_refresh(file_list_t *list)
{
   size_t list_size;
   size_t selection = menu_driver_selection_ptr;

   if (list->size)
      menu_entries_build_scroll_indices(list);

   list_size = menu_entries_get_size();

   if ((selection >= list_size) && list_size)
   {
      size_t idx = list_size - 1;
      menu_driver_selection_ptr = idx;
      menu_driver_navigation_set(1);
   }
   else if (!list_size)
   {
      bool pending_push = 1;
      menu_driver_ctl(MENU_NAVIGATION_CTL_CLEAR, &pending_push);
   }

   return 1;
}
