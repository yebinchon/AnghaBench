
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int menu_list_t ;


 int * menu_entries_list ;
 size_t menu_list_get_stack_size (int *,size_t) ;

size_t menu_entries_get_stack_size(size_t idx)
{
   menu_list_t *menu_list = menu_entries_list;
   if (!menu_list)
      return 0;
   return menu_list_get_stack_size(menu_list, idx);
}
