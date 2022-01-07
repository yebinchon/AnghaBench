
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int core_option_manager_t ;


 int RARCH_CTL_CORE_OPTIONS_LIST_GET ;
 int action_cancel_pop_default (int *,int *,int ,int ) ;
 scalar_t__ atoi (char const*) ;
 int core_option_manager_set_val (int *,int,size_t) ;
 int rarch_ctl (int ,int **) ;

__attribute__((used)) static int action_ok_push_dropdown_setting_core_options_item_special(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   core_option_manager_t *coreopts = ((void*)0);
   int core_option_idx = (int)atoi(label);

   rarch_ctl(RARCH_CTL_CORE_OPTIONS_LIST_GET, &coreopts);

   if (!coreopts)
      return -1;

   core_option_manager_set_val(coreopts, core_option_idx, idx);
   return action_cancel_pop_default(((void*)0), ((void*)0), 0, 0);
}
