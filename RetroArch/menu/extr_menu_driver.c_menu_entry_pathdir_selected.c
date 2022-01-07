
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef void rarch_setting_t ;
struct TYPE_6__ {int * setting; } ;
typedef TYPE_2__ menu_file_list_cbs_t ;
struct TYPE_7__ {TYPE_1__* list; } ;
typedef TYPE_3__ file_list_t ;
struct TYPE_5__ {scalar_t__ actiondata; } ;


 int MENU_SETTING_CTL_ACTION_RIGHT ;
 int MENU_SETTING_CTL_IS_OF_PATH_TYPE ;
 TYPE_3__* menu_entries_get_selection_buf_ptr_internal (int ) ;
 scalar_t__ menu_setting_ctl (int ,void*) ;

void menu_entry_pathdir_selected(uint32_t i)
{
   file_list_t *selection_buf = menu_entries_get_selection_buf_ptr_internal(0);
   menu_file_list_cbs_t *cbs = selection_buf ?
      (menu_file_list_cbs_t*)selection_buf->list[i].actiondata : ((void*)0);
   rarch_setting_t *setting = cbs ? cbs->setting : ((void*)0);

   if (menu_setting_ctl(MENU_SETTING_CTL_IS_OF_PATH_TYPE, (void*)setting))
      menu_setting_ctl(MENU_SETTING_CTL_ACTION_RIGHT, setting);
}
