
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


 int MENU_ENUM_LABEL_VALUE_RGUI_PARTICLE_EFFECT_NONE ;
 int MENU_ENUM_LABEL_VALUE_RGUI_PARTICLE_EFFECT_RAIN ;
 int MENU_ENUM_LABEL_VALUE_RGUI_PARTICLE_EFFECT_SNOW ;
 int MENU_ENUM_LABEL_VALUE_RGUI_PARTICLE_EFFECT_SNOW_ALT ;
 int MENU_ENUM_LABEL_VALUE_RGUI_PARTICLE_EFFECT_STARFIELD ;
 int MENU_ENUM_LABEL_VALUE_RGUI_PARTICLE_EFFECT_VORTEX ;






 int msg_hash_to_str (int ) ;
 int strlcpy (char*,int ,size_t) ;

__attribute__((used)) static void setting_get_string_representation_uint_rgui_particle_effect(
      rarch_setting_t *setting,
      char *s, size_t len)
{
   if (!setting)
      return;

   switch (*setting->value.target.unsigned_integer)
   {
      case 133:
         strlcpy(s,
               msg_hash_to_str(
                  MENU_ENUM_LABEL_VALUE_RGUI_PARTICLE_EFFECT_NONE),
               len);
         break;
      case 131:
         strlcpy(s,
               msg_hash_to_str(
                  MENU_ENUM_LABEL_VALUE_RGUI_PARTICLE_EFFECT_SNOW),
               len);
         break;
      case 130:
         strlcpy(s,
               msg_hash_to_str(
                  MENU_ENUM_LABEL_VALUE_RGUI_PARTICLE_EFFECT_SNOW_ALT),
               len);
         break;
      case 132:
         strlcpy(s,
               msg_hash_to_str(
                  MENU_ENUM_LABEL_VALUE_RGUI_PARTICLE_EFFECT_RAIN),
               len);
         break;
      case 128:
         strlcpy(s,
               msg_hash_to_str(
                  MENU_ENUM_LABEL_VALUE_RGUI_PARTICLE_EFFECT_VORTEX),
               len);
         break;
      case 129:
         strlcpy(s,
               msg_hash_to_str(
                  MENU_ENUM_LABEL_VALUE_RGUI_PARTICLE_EFFECT_STARFIELD),
               len);
         break;
   }
}
