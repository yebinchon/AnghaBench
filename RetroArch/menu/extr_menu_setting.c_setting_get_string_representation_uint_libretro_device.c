
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct retro_controller_description {char* desc; } ;
struct TYPE_6__ {unsigned int size; int * data; } ;
struct TYPE_7__ {TYPE_1__ ports; } ;
typedef TYPE_2__ rarch_system_info_t ;
struct TYPE_8__ {unsigned int index_offset; } ;
typedef TYPE_3__ rarch_setting_t ;


 int MENU_ENUM_LABEL_VALUE_NONE ;
 int MENU_ENUM_LABEL_VALUE_RETROPAD ;
 int MENU_ENUM_LABEL_VALUE_RETROPAD_WITH_ANALOG ;
 int MENU_ENUM_LABEL_VALUE_UNKNOWN ;



 unsigned int input_config_get_device (unsigned int) ;
 struct retro_controller_description* libretro_find_controller_description (int *,unsigned int) ;
 char* msg_hash_to_str (int ) ;
 TYPE_2__* runloop_get_system_info () ;
 int string_is_empty (char const*) ;
 int strlcpy (char*,char const*,size_t) ;

__attribute__((used)) static void setting_get_string_representation_uint_libretro_device(
      rarch_setting_t *setting,
      char *s, size_t len)
{
   unsigned index_offset, device;
   const struct retro_controller_description *desc = ((void*)0);
   const char *name = ((void*)0);
   rarch_system_info_t *system = runloop_get_system_info();

   if (!setting)
      return;

   index_offset = setting->index_offset;
   device = input_config_get_device(index_offset);

   if (system)
   {
      if (index_offset < system->ports.size)
         desc = libretro_find_controller_description(
               &system->ports.data[index_offset],
               device);
   }

   if (desc)
      name = desc->desc;

   if (!name)
   {

      switch (device)
      {
         case 128:
            name = msg_hash_to_str(MENU_ENUM_LABEL_VALUE_NONE);
            break;
         case 129:
            name = msg_hash_to_str(MENU_ENUM_LABEL_VALUE_RETROPAD);
            break;
         case 130:
            name = msg_hash_to_str(MENU_ENUM_LABEL_VALUE_RETROPAD_WITH_ANALOG);
            break;
         default:
            name = msg_hash_to_str(MENU_ENUM_LABEL_VALUE_UNKNOWN);
            break;
      }
   }

   if (!string_is_empty(name))
      strlcpy(s, name, len);
}
