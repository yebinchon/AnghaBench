
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int menu_list_t ;
typedef int file_list_t ;


 int * menu_entries_list ;
 int * menu_list_get (int *,unsigned int) ;

file_list_t *menu_entries_get_menu_stack_ptr(size_t idx)
{
   menu_list_t *menu_list = menu_entries_list;
   if (!menu_list)
      return ((void*)0);
   return menu_list_get(menu_list, (unsigned)idx);
}
