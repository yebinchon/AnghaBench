
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* unsigned_integer; } ;
struct TYPE_6__ {TYPE_1__ target; } ;
struct TYPE_7__ {TYPE_2__ value; } ;
typedef TYPE_3__ rarch_setting_t ;
 int MENU_ENUM_LABEL_VALUE_DOWN_SELECT ;
 int MENU_ENUM_LABEL_VALUE_HOLD_START ;
 int MENU_ENUM_LABEL_VALUE_NONE ;
 char* msg_hash_to_str (int ) ;
 int strlcpy (char*,char*,size_t) ;

__attribute__((used)) static void setting_get_string_representation_toggle_gamepad_combo(
      rarch_setting_t *setting,
      char *s, size_t len)
{
   if (!setting)
      return;

   switch (*setting->value.target.unsigned_integer)
   {
      case 129:
         strlcpy(s, msg_hash_to_str(MENU_ENUM_LABEL_VALUE_NONE), len);
         break;
      case 135:
         strlcpy(s, "Down + L1 + R1 + Y", len);
         break;
      case 131:
         strlcpy(s, "L3 + R3", len);
         break;
      case 133:
         strlcpy(s, "L1 + R1 + Start + Select", len);
         break;
      case 128:
         strlcpy(s, "Start + Select", len);
         break;
      case 132:
         strlcpy(s, "L3 + R", len);
         break;
      case 130:
         strlcpy(s, "L + R", len);
         break;
      case 134:
         strlcpy(s, msg_hash_to_str(MENU_ENUM_LABEL_VALUE_HOLD_START), len);
         break;
      case 136:
         strlcpy(s, msg_hash_to_str(MENU_ENUM_LABEL_VALUE_DOWN_SELECT), len);
         break;
   }
}
