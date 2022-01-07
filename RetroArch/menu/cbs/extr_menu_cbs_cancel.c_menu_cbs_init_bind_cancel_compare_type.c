
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int enum_idx; } ;
typedef TYPE_1__ menu_file_list_cbs_t ;


 int BIND_ACTION_CANCEL (TYPE_1__*,int ) ;
 int action_cancel_cheat_details ;
 int action_cancel_core_content ;

__attribute__((used)) static int menu_cbs_init_bind_cancel_compare_type(
      menu_file_list_cbs_t *cbs, unsigned type)
{
   switch (type)
   {
      case 154:
      case 153:
      case 155:
         BIND_ACTION_CANCEL(cbs, action_cancel_core_content);
         return 0;
   }

   switch (cbs->enum_idx)
   {

      case 142:
      case 130:
      case 144:
      case 143:
      case 148:
      case 141:
      case 129:
      case 128:
      case 152:
      case 151:
      case 138:
      case 140:
      case 139:
      case 132:
      case 131:
      case 137:
      case 135:
      case 136:
      case 133:
      case 134:
      case 150:
      case 149:
      case 147:
      case 146:
      case 145:
      {
         BIND_ACTION_CANCEL(cbs, action_cancel_cheat_details);
         break ;
      }
      default :
      {
         break ;
      }
   }
   return -1;
}
