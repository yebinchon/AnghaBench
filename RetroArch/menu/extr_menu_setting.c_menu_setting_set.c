
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int setting; } ;
typedef TYPE_1__ menu_file_list_cbs_t ;
typedef int file_list_t ;


 scalar_t__ file_list_get_actiondata_at_offset (int *,size_t) ;
 int menu_action_handle_setting (int ,unsigned int,unsigned int,int) ;
 int * menu_entries_get_selection_buf_ptr (int ) ;
 size_t menu_navigation_get_selection () ;

int menu_setting_set(unsigned type, unsigned action, bool wraparound)
{
   int ret = 0;
   file_list_t *selection_buf = menu_entries_get_selection_buf_ptr(0);
   size_t selection = menu_navigation_get_selection();
   menu_file_list_cbs_t *cbs = selection_buf ?
      (menu_file_list_cbs_t*)file_list_get_actiondata_at_offset(selection_buf, selection) : ((void*)0);

   if (!cbs)
      return 0;

   ret = menu_action_handle_setting(cbs->setting,
         type, action, wraparound);

   if (ret == -1)
      return 0;
   return ret;
}
