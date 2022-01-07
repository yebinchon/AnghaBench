
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * unsigned_integer; } ;
struct TYPE_6__ {TYPE_1__ target; } ;
struct TYPE_7__ {TYPE_2__ value; } ;
typedef TYPE_3__ rarch_setting_t ;


 int MENU_ENUM_LABEL_CHEAT_SEARCH_EQMINUS_VAL ;
 char* msg_hash_to_str (int ) ;
 int snprintf (char*,size_t,char*,int ,int ) ;

__attribute__((used)) static void setting_get_string_representation_uint_cheat_eqminus(rarch_setting_t *setting,
      char *s, size_t len)
{
   if (setting)
      snprintf(s, len, msg_hash_to_str(MENU_ENUM_LABEL_CHEAT_SEARCH_EQMINUS_VAL),
            *setting->value.target.unsigned_integer, *setting->value.target.unsigned_integer);
}
