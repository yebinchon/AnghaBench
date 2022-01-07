
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int enum_idx; } ;
typedef TYPE_1__ rarch_setting_t ;
typedef int enum_idx ;


 int ACTION_OK_DL_DROPDOWN_BOX_LIST_SPECIAL ;
 int generic_action_ok_displaylist_push (char*,int *,int *,int ,int ,int ,int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int setting_action_ok_uint_special(rarch_setting_t *setting, bool wraparound)
{
   char enum_idx[16];
   if (!setting)
      return -1;

   snprintf(enum_idx, sizeof(enum_idx), "%d", setting->enum_idx);

   generic_action_ok_displaylist_push(
         enum_idx,
         ((void*)0), ((void*)0), 0, 0, 0,
         ACTION_OK_DL_DROPDOWN_BOX_LIST_SPECIAL);
   return 0;
}
