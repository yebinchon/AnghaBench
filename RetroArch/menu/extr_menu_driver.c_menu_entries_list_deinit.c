
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * menu_entries_list ;
 int menu_list_free (int *) ;

__attribute__((used)) static void menu_entries_list_deinit(void)
{
   if (menu_entries_list)
      menu_list_free(menu_entries_list);
   menu_entries_list = ((void*)0);
}
