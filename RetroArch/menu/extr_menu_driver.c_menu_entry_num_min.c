
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_7__ {double min; } ;
typedef TYPE_2__ rarch_setting_t ;
struct TYPE_8__ {TYPE_2__* setting; } ;
typedef TYPE_3__ menu_file_list_cbs_t ;
struct TYPE_9__ {TYPE_1__* list; } ;
typedef TYPE_4__ file_list_t ;
struct TYPE_6__ {scalar_t__ actiondata; } ;


 TYPE_4__* menu_entries_get_selection_buf_ptr_internal (int ) ;

float menu_entry_num_min(uint32_t i)
{
   file_list_t *selection_buf = menu_entries_get_selection_buf_ptr_internal(0);
   menu_file_list_cbs_t *cbs = selection_buf ?
      (menu_file_list_cbs_t*)selection_buf->list[i].actiondata : ((void*)0);
   rarch_setting_t *setting = cbs ? cbs->setting : ((void*)0);
   double min = setting->min;
   return (float)min;
}
