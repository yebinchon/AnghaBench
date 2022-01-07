
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int menu_list_t ;
typedef int file_list_t ;


 int MENU_ENTRIES_CTL_SET_REFRESH ;
 int file_list_get_last (int *,char const**,char const**,unsigned int*,size_t*) ;
 size_t menu_driver_selection_ptr ;
 int menu_entries_ctl (int ,int*) ;
 scalar_t__ menu_list_flush_stack_type (char const*,char const*,unsigned int,unsigned int) ;
 int * menu_list_get (int *,unsigned int) ;
 int menu_list_pop_stack (int *,size_t,size_t*,int) ;

__attribute__((used)) static void menu_list_flush_stack(menu_list_t *list,
      size_t idx, const char *needle, unsigned final_type)
{
   bool refresh = 0;
   const char *path = ((void*)0);
   const char *label = ((void*)0);
   unsigned type = 0;
   size_t entry_idx = 0;
   file_list_t *menu_list = menu_list_get(list, (unsigned)idx);

   menu_entries_ctl(MENU_ENTRIES_CTL_SET_REFRESH, &refresh);
   file_list_get_last(menu_list,
         &path, &label, &type, &entry_idx);

   while (menu_list_flush_stack_type(
            needle, label, type, final_type) != 0)
   {
      size_t new_selection_ptr = menu_driver_selection_ptr;

      if (!menu_list_pop_stack(list, idx, &new_selection_ptr, 1))
         break;

      menu_driver_selection_ptr = new_selection_ptr;

      menu_list = menu_list_get(list, (unsigned)idx);

      file_list_get_last(menu_list,
            &path, &label, &type, &entry_idx);
   }
}
