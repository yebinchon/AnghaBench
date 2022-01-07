
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ setting; } ;
typedef TYPE_1__ menu_file_list_cbs_t ;


 int BIND_ACTION_SCAN (TYPE_1__*,int *) ;
 scalar_t__ ST_BIND ;
 int * action_scan_input_desc ;
 int menu_cbs_init_bind_scan_compare_type (TYPE_1__*,unsigned int) ;
 scalar_t__ setting_get_type (scalar_t__) ;

int menu_cbs_init_bind_scan(menu_file_list_cbs_t *cbs,
      const char *path, const char *label, unsigned type, size_t idx)
{
   if (!cbs)
      return -1;

   BIND_ACTION_SCAN(cbs, ((void*)0));

   if (cbs->setting)
   {
      if (setting_get_type(cbs->setting) == ST_BIND)
      {
         BIND_ACTION_SCAN(cbs, action_scan_input_desc);
         return 0;
      }
   }

   menu_cbs_init_bind_scan_compare_type(cbs, type);

   return -1;
}
