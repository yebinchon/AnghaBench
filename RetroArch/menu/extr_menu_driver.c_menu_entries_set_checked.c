
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int checked; } ;
typedef TYPE_2__ menu_file_list_cbs_t ;
struct TYPE_7__ {TYPE_1__* list; } ;
typedef TYPE_3__ file_list_t ;
struct TYPE_5__ {scalar_t__ actiondata; } ;



void menu_entries_set_checked(file_list_t *list, size_t entry_idx,
      bool checked)
{
   menu_file_list_cbs_t *cbs = (menu_file_list_cbs_t*)list->list[entry_idx].actiondata;

   if (cbs)
      cbs->checked = checked;
}
