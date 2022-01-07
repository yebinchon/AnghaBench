
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t* unsigned_integer; } ;
struct TYPE_7__ {TYPE_1__ target; } ;
struct TYPE_8__ {TYPE_2__ value; } ;
typedef TYPE_3__ rarch_setting_t ;
struct TYPE_9__ {int name; } ;


 TYPE_5__* aspectratio_lut ;
 int strlcpy (char*,int ,size_t) ;

__attribute__((used)) static void setting_get_string_representation_uint_aspect_ratio_index(
      rarch_setting_t *setting,
      char *s, size_t len)
{
   if (setting)
      strlcpy(s,
            aspectratio_lut[*setting->value.target.unsigned_integer].name,
            len);
}
