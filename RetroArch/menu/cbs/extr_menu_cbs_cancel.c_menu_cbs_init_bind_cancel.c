
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int menu_file_list_cbs_t ;


 int BIND_ACTION_CANCEL (int *,int ) ;
 int action_cancel_pop_default ;
 scalar_t__ menu_cbs_init_bind_cancel_compare_label (int *,char const*) ;
 scalar_t__ menu_cbs_init_bind_cancel_compare_type (int *,unsigned int) ;

int menu_cbs_init_bind_cancel(menu_file_list_cbs_t *cbs,
      const char *path, const char *label, unsigned type, size_t idx)
{
   if (!cbs)
      return -1;

   BIND_ACTION_CANCEL(cbs, action_cancel_pop_default);

   if (menu_cbs_init_bind_cancel_compare_label(cbs, label) == 0)
      return 0;

   if (menu_cbs_init_bind_cancel_compare_type(
            cbs, type) == 0)
      return 0;

   return -1;
}
