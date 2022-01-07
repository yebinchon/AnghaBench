
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int menu_list_t ;


 int * menu_entries_list ;
 int menu_list_pop_stack (int *,size_t,size_t*,int) ;

void menu_entries_pop_stack(size_t *ptr, size_t idx, bool animate)
{
   menu_list_t *menu_list = menu_entries_list;
   if (menu_list)
      menu_list_pop_stack(menu_list, idx, ptr, animate);
}
