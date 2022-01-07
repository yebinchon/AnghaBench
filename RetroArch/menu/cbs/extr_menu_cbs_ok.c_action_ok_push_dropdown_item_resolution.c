
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int action_cb_push_dropdown_item_resolution (char const*,char const*,unsigned int,size_t,size_t) ;
 int menu_cbs_exit () ;

__attribute__((used)) static int action_ok_push_dropdown_item_resolution(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   if (action_cb_push_dropdown_item_resolution(path,
            label, type, idx, entry_idx) == 1)
   {


      return menu_cbs_exit();
   }
   return 0;
}
