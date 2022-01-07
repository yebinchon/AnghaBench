
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int enum_idx; } ;
typedef TYPE_2__ menu_file_list_cbs_t ;
struct TYPE_8__ {int size; TYPE_1__* list; } ;
typedef TYPE_3__ file_list_t ;
typedef enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;
struct TYPE_6__ {scalar_t__ actiondata; } ;


 int file_list_get_last (TYPE_3__*,char const**,char const**,unsigned int*,size_t*) ;
 int menu_entries_list ;
 TYPE_3__* menu_list_get (int ,int ) ;

void menu_entries_get_last_stack(const char **path, const char **label,
      unsigned *file_type, enum msg_hash_enums *enum_idx, size_t *entry_idx)
{
   file_list_t *list = ((void*)0);
   if (!menu_entries_list)
      return;

   list = menu_list_get(menu_entries_list, 0);

   file_list_get_last(list,
         path, label, file_type, entry_idx);

   if (enum_idx)
   {
      menu_file_list_cbs_t *cbs = (menu_file_list_cbs_t*)
         list->list[list->size - 1].actiondata;

      if (cbs)
         *enum_idx = cbs->enum_idx;
   }
}
