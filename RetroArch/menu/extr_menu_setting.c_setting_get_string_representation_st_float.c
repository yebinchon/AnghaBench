
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * fraction; } ;
struct TYPE_6__ {TYPE_1__ target; } ;
struct TYPE_7__ {char* rounding_fraction; TYPE_2__ value; } ;
typedef TYPE_3__ rarch_setting_t ;


 int snprintf (char*,size_t,char*,int ) ;

__attribute__((used)) static void setting_get_string_representation_st_float(rarch_setting_t *setting,
      char *s, size_t len)
{
   if (setting)
      snprintf(s, len, setting->rounding_fraction,
            *setting->value.target.fraction);
}
