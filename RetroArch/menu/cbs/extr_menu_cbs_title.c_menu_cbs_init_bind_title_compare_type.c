
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int menu_file_list_cbs_t ;


 int BIND_ACTION_GET_TITLE (int *,int ) ;




 int action_get_title_action_generic ;
 int action_get_title_input_settings ;
 int action_get_title_menu ;

__attribute__((used)) static int menu_cbs_init_bind_title_compare_type(menu_file_list_cbs_t *cbs,
      unsigned type)
{
   switch (type)
   {
      case 131:
         BIND_ACTION_GET_TITLE(cbs, action_get_title_menu);
         break;
      case 130:
      case 129:
         BIND_ACTION_GET_TITLE(cbs, action_get_title_input_settings);
         break;
      case 128:
         BIND_ACTION_GET_TITLE(cbs, action_get_title_action_generic);
         break;
      default:
         return -1;
   }

   return 0;
}
