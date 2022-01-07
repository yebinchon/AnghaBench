
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bind_type; } ;
typedef TYPE_1__ rarch_setting_t ;



unsigned setting_get_bind_type(rarch_setting_t *setting)
{
   if (!setting)
      return 0;
   return setting->bind_type;
}
