
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int menu_list_t ;


 int * menu_entries_list ;
 int menu_list_flush_stack (int *,int ,char const*,unsigned int) ;

void menu_entries_flush_stack(const char *needle, unsigned final_type)
{
   menu_list_t *menu_list = menu_entries_list;
   if (menu_list)
      menu_list_flush_stack(menu_list, 0, needle, final_type);
}
