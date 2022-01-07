
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int core_option_lbl ;
typedef int core_option_idx ;


 int ACTION_OK_DL_DROPDOWN_BOX_LIST ;
 int generic_action_ok_displaylist_push (char*,int *,char*,int ,size_t,int ,int ) ;
 int snprintf (char*,int,char*,unsigned int) ;

int action_ok_core_option_dropdown_list(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   char core_option_lbl[256];
   char core_option_idx[256];
   snprintf(core_option_lbl, sizeof(core_option_lbl), "core_option_%d", (int)idx);
   snprintf(core_option_idx, sizeof(core_option_idx), "%d",
         type);

   generic_action_ok_displaylist_push(
         core_option_lbl, ((void*)0),
         core_option_idx, 0, idx, 0,
         ACTION_OK_DL_DROPDOWN_BOX_LIST);
   return 0;
}
