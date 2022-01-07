
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t* unsigned_integer; } ;
struct TYPE_6__ {TYPE_1__ target; } ;
struct TYPE_7__ {TYPE_2__ value; } ;
typedef TYPE_3__ rarch_setting_t ;


 size_t ANALOG_DPAD_LAST ;
 int MENU_ENUM_LABEL_VALUE_LEFT_ANALOG ;
 int MENU_ENUM_LABEL_VALUE_NONE ;
 int MENU_ENUM_LABEL_VALUE_RIGHT_ANALOG ;
 char* msg_hash_to_str (int ) ;
 int strlcpy (char*,char const*,size_t) ;

__attribute__((used)) static void setting_get_string_representation_uint_analog_dpad_mode(
      rarch_setting_t *setting,
      char *s, size_t len)
{
   const char *modes[3];

   modes[0] = msg_hash_to_str(MENU_ENUM_LABEL_VALUE_NONE);
   modes[1] = msg_hash_to_str(MENU_ENUM_LABEL_VALUE_LEFT_ANALOG);
   modes[2] = msg_hash_to_str(MENU_ENUM_LABEL_VALUE_RIGHT_ANALOG);

   strlcpy(s, modes[*setting->value.target.unsigned_integer % ANALOG_DPAD_LAST], len);
}
