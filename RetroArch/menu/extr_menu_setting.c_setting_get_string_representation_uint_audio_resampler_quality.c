
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


 int MENU_ENUM_LABEL_VALUE_DONT_CARE ;
 int MSG_RESAMPLER_QUALITY_HIGHER ;
 int MSG_RESAMPLER_QUALITY_HIGHEST ;
 int MSG_RESAMPLER_QUALITY_LOWER ;
 int MSG_RESAMPLER_QUALITY_LOWEST ;
 int MSG_RESAMPLER_QUALITY_NORMAL ;






 int msg_hash_to_str (int ) ;
 int strlcpy (char*,int ,size_t) ;

__attribute__((used)) static void setting_get_string_representation_uint_audio_resampler_quality(
      rarch_setting_t *setting,
      char *s, size_t len)
{
   if (!setting)
      return;

   switch (*setting->value.target.unsigned_integer)
   {
      case 133:
         strlcpy(s, msg_hash_to_str(MENU_ENUM_LABEL_VALUE_DONT_CARE),
               len);
         break;
      case 129:
         strlcpy(s, msg_hash_to_str(MSG_RESAMPLER_QUALITY_LOWEST),
               len);
         break;
      case 130:
         strlcpy(s, msg_hash_to_str(MSG_RESAMPLER_QUALITY_LOWER),
               len);
         break;
      case 132:
         strlcpy(s, msg_hash_to_str(MSG_RESAMPLER_QUALITY_HIGHER),
               len);
         break;
      case 131:
         strlcpy(s, msg_hash_to_str(MSG_RESAMPLER_QUALITY_HIGHEST),
               len);
         break;
      case 128:
         strlcpy(s, msg_hash_to_str(MSG_RESAMPLER_QUALITY_NORMAL),
               len);
         break;
   }
}
