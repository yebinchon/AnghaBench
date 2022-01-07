
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int menu_list_t ;
struct TYPE_8__ {scalar_t__ idx; scalar_t__ list_size; TYPE_2__* list; scalar_t__ action; int type; } ;
typedef TYPE_1__ menu_ctx_list_t ;
struct TYPE_9__ {scalar_t__ size; } ;
typedef TYPE_2__ file_list_t ;


 int MENU_ENTRIES_CTL_SET_REFRESH ;
 int MENU_LIST_PLAIN ;
 int RARCH_MENU_CTL_LIST_FREE ;
 int file_list_pop (TYPE_2__*,size_t*) ;
 int menu_driver_ctl (int ,TYPE_1__*) ;
 int menu_driver_list_cache (TYPE_1__*) ;
 int menu_driver_list_set_selection (TYPE_2__*) ;
 int menu_entries_ctl (int ,int*) ;
 TYPE_2__* menu_list_get (int *,unsigned int) ;
 int menu_list_get_stack_size (int *,size_t) ;

__attribute__((used)) static bool menu_list_pop_stack(menu_list_t *list,
      size_t idx, size_t *directory_ptr, bool animate)
{
   menu_ctx_list_t list_info;
   bool refresh = 0;
   file_list_t *menu_list = menu_list_get(list, (unsigned)idx);

   if (menu_list_get_stack_size(list, idx) <= 1)
      return 0;

   list_info.type = MENU_LIST_PLAIN;
   list_info.action = 0;

   if (animate)
      menu_driver_list_cache(&list_info);

   if (menu_list->size != 0)
   {
      menu_ctx_list_t list_info;

      list_info.list = menu_list;
      list_info.idx = menu_list->size - 1;
      list_info.list_size = menu_list->size - 1;

      menu_driver_ctl(RARCH_MENU_CTL_LIST_FREE, &list_info);
   }

   file_list_pop(menu_list, directory_ptr);
   menu_driver_list_set_selection(menu_list);
   if (animate)
      menu_entries_ctl(MENU_ENTRIES_CTL_SET_REFRESH, &refresh);

   return 1;
}
