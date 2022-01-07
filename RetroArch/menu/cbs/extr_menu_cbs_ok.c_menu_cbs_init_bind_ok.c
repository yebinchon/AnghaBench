
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int menu_file_list_cbs_t ;


 int BIND_ACTION_OK (int *,int ) ;
 int action_ok_lookup_setting ;
 scalar_t__ menu_cbs_init_bind_ok_compare_label (int *,char const*,int ) ;
 scalar_t__ menu_cbs_init_bind_ok_compare_type (int *,int ,int ,unsigned int) ;

int menu_cbs_init_bind_ok(menu_file_list_cbs_t *cbs,
      const char *path, const char *label, unsigned type, size_t idx,
      uint32_t label_hash, uint32_t menu_label_hash)
{
   if (!cbs)
      return -1;

   BIND_ACTION_OK(cbs, action_ok_lookup_setting);

   if (menu_cbs_init_bind_ok_compare_label(cbs, label, label_hash) == 0)
      return 0;

   if (menu_cbs_init_bind_ok_compare_type(cbs, label_hash, menu_label_hash, type) == 0)
      return 0;

   return -1;
}
