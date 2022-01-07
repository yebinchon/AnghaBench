
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int menu_list_t ;
struct TYPE_3__ {size_t size; } ;
typedef TYPE_1__ file_list_t ;


 int * menu_entries_list ;
 TYPE_1__* menu_list_get_selection (int *,int ) ;

size_t menu_entries_get_size(void)
{
   const file_list_t *list = ((void*)0);
   menu_list_t *menu_list = menu_entries_list;
   if (!menu_list)
      return 0;
   list = menu_list_get_selection(menu_list, 0);
   return list->size;
}
