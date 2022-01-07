
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


 int MENU_ENUM_LABEL_VALUE_RGUI_ASPECT_RATIO_16_10 ;
 int MENU_ENUM_LABEL_VALUE_RGUI_ASPECT_RATIO_16_10_CENTRE ;
 int MENU_ENUM_LABEL_VALUE_RGUI_ASPECT_RATIO_16_9 ;
 int MENU_ENUM_LABEL_VALUE_RGUI_ASPECT_RATIO_16_9_CENTRE ;
 int MENU_ENUM_LABEL_VALUE_RGUI_ASPECT_RATIO_4_3 ;





 int msg_hash_to_str (int ) ;
 int strlcpy (char*,int ,size_t) ;

__attribute__((used)) static void setting_get_string_representation_uint_rgui_aspect_ratio(
      rarch_setting_t *setting,
      char *s, size_t len)
{
   if (!setting)
      return;

   switch (*setting->value.target.unsigned_integer)
   {
      case 128:
         strlcpy(s,
               msg_hash_to_str(
                  MENU_ENUM_LABEL_VALUE_RGUI_ASPECT_RATIO_4_3),
               len);
         break;
      case 130:
         strlcpy(s,
               msg_hash_to_str(
                  MENU_ENUM_LABEL_VALUE_RGUI_ASPECT_RATIO_16_9),
               len);
         break;
      case 129:
         strlcpy(s,
               msg_hash_to_str(
                  MENU_ENUM_LABEL_VALUE_RGUI_ASPECT_RATIO_16_9_CENTRE),
               len);
         break;
      case 132:
         strlcpy(s,
               msg_hash_to_str(
                  MENU_ENUM_LABEL_VALUE_RGUI_ASPECT_RATIO_16_10),
               len);
         break;
      case 131:
         strlcpy(s,
               msg_hash_to_str(
                  MENU_ENUM_LABEL_VALUE_RGUI_ASPECT_RATIO_16_10_CENTRE),
               len);
         break;
   }
}
