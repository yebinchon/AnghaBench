
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int menu_file_list_cbs_t ;


 int BIND_ACTION_SCAN (int *,int ) ;





 int action_scan_directory ;
 int action_scan_file ;
 int action_switch_thumbnail ;

__attribute__((used)) static int menu_cbs_init_bind_scan_compare_type(menu_file_list_cbs_t *cbs,
      unsigned type)
{

   switch (type)
   {
      case 128:
         BIND_ACTION_SCAN(cbs, action_switch_thumbnail);
         break;

      case 130:
      default:
         break;
   }

   return -1;
}
