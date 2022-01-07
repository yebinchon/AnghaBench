
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* get_string_representation ) (TYPE_1__*,char*,size_t) ;} ;
typedef TYPE_1__ rarch_setting_t ;


 int stub1 (TYPE_1__*,char*,size_t) ;

void setting_get_string_representation(rarch_setting_t *setting, char *s, size_t len)
{
   if (!setting || !s)
      return;

   if (setting->get_string_representation)
      setting->get_string_representation(setting, s, len);
}
