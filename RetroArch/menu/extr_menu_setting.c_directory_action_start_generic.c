
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int string; } ;
struct TYPE_6__ {TYPE_1__ default_value; } ;
typedef TYPE_2__ rarch_setting_t ;


 int setting_set_with_string_representation (TYPE_2__*,int ) ;

__attribute__((used)) static int directory_action_start_generic(rarch_setting_t *setting)
{
   if (!setting)
      return -1;

   setting_set_with_string_representation(setting,
         setting->default_value.string);

   return 0;
}
