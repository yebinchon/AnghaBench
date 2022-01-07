
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int enum_idx; int action_deferred_push; } ;
typedef TYPE_1__ menu_file_list_cbs_t ;



 int MSG_UNKNOWN ;
 int stripes_deferred_push_content_actions ;

__attribute__((used)) static int stripes_list_bind_init_compare_label(menu_file_list_cbs_t *cbs)
{
   if (cbs && cbs->enum_idx != MSG_UNKNOWN)
   {
      switch (cbs->enum_idx)
      {
         case 128:
            cbs->action_deferred_push = stripes_deferred_push_content_actions;
            break;
         default:
            return -1;
      }
   }

   return 0;
}
