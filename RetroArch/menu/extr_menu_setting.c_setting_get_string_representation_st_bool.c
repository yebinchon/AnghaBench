
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int off_label; int on_label; } ;
struct TYPE_6__ {scalar_t__* boolean; } ;
struct TYPE_7__ {TYPE_1__ target; } ;
struct TYPE_9__ {TYPE_3__ boolean; TYPE_2__ value; } ;
typedef TYPE_4__ rarch_setting_t ;


 int strlcpy (char*,int ,size_t) ;

__attribute__((used)) static void setting_get_string_representation_st_bool(rarch_setting_t *setting,
      char *s, size_t len)
{
   if (setting)
      strlcpy(s, *setting->value.target.boolean ? setting->boolean.on_label :
            setting->boolean.off_label, len);
}
