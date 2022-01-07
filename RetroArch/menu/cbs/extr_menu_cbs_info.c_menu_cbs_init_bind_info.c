
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int menu_file_list_cbs_t ;


 int BIND_ACTION_INFO (int *,int ) ;
 unsigned int MENU_SETTINGS_CHEEVOS_START ;
 unsigned int MENU_SETTINGS_NETPLAY_ROOMS_START ;
 int action_info_cheevos ;
 int action_info_default ;

int menu_cbs_init_bind_info(menu_file_list_cbs_t *cbs,
      const char *path, const char *label, unsigned type, size_t idx)
{
   if (!cbs)
      return -1;
   BIND_ACTION_INFO(cbs, action_info_default);

   return -1;
}
