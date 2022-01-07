
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int menu_file_list_cbs_t ;
struct TYPE_5__ {int size; TYPE_1__* list; } ;
typedef TYPE_2__ file_list_t ;
struct TYPE_4__ {scalar_t__ actiondata; } ;


 scalar_t__ menu_entries_list ;
 TYPE_2__* menu_list_get (scalar_t__,int ) ;

menu_file_list_cbs_t *menu_entries_get_last_stack_actiondata(void)
{
   if (menu_entries_list)
   {
      const file_list_t *list = menu_list_get(menu_entries_list, 0);
      return (menu_file_list_cbs_t*)list->list[list->size - 1].actiondata;
   }
   return ((void*)0);
}
