
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned int* input_joypad_map; } ;
struct TYPE_7__ {TYPE_1__ uints; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_8__ {unsigned int index_offset; } ;
typedef TYPE_3__ rarch_setting_t ;


 int MENU_ENUM_LABEL_VALUE_DISABLED ;
 int MENU_ENUM_LABEL_VALUE_NOT_AVAILABLE ;
 int MENU_ENUM_LABEL_VALUE_PORT ;
 TYPE_2__* config_get_ptr () ;
 unsigned int input_autoconfigure_get_device_name_index (unsigned int) ;
 unsigned int input_config_get_device_count () ;
 char* input_config_get_device_display_name (unsigned int) ;
 char* input_config_get_device_name (unsigned int) ;
 char* msg_hash_to_str (int ) ;
 int snprintf (char*,size_t,char*,char const*,...) ;
 int string_is_empty (char const*) ;
 int strlcpy (char*,char const*,size_t) ;

__attribute__((used)) static void get_string_representation_bind_device(rarch_setting_t *setting, char *s,
      size_t len)
{
   unsigned index_offset, map = 0;
   unsigned max_devices = input_config_get_device_count();
   settings_t *settings = config_get_ptr();

   if (!setting)
      return;

   index_offset = setting->index_offset;
   map = settings->uints.input_joypad_map[index_offset];

   if (map < max_devices)
   {
      const char *device_name = input_config_get_device_display_name(map) ?
         input_config_get_device_display_name(map) : input_config_get_device_name(map);

      if (!string_is_empty(device_name))
      {
         unsigned idx = input_autoconfigure_get_device_name_index(map);


         if ( idx > 0)
            snprintf(s, len,
                  "%s (#%u)",
                  device_name,
                  idx);
         else
            strlcpy(s, device_name, len);
      }
      else
         snprintf(s, len,
               "%s (%s #%u)",
               msg_hash_to_str(MENU_ENUM_LABEL_VALUE_NOT_AVAILABLE),
               msg_hash_to_str(MENU_ENUM_LABEL_VALUE_PORT),
               map);
   }
   else
      strlcpy(s, msg_hash_to_str(MENU_ENUM_LABEL_VALUE_DISABLED), len);
}
