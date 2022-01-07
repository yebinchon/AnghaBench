
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__* boolean; } ;
struct TYPE_7__ {TYPE_1__ target; } ;
struct TYPE_8__ {TYPE_2__ value; } ;
typedef TYPE_3__ rarch_setting_t ;


 int setting_set_with_string_representation (TYPE_3__*,char*) ;

__attribute__((used)) static int setting_bool_action_toggle_default(rarch_setting_t *setting, bool wraparound)
{
   if (!setting)
      return -1;

   (void)wraparound;

   setting_set_with_string_representation(setting,
         *setting->value.target.boolean ? "false" : "true");

   return 0;
}
