
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int subsystem_path ;
typedef int path_main_basename ;
typedef int path_libretro ;
typedef int path_default_shader_preset ;
typedef int path_core_options_file ;
typedef int path_content ;
typedef int path_config_file ;
typedef int path_config_append_file ;
typedef enum rarch_path_type { ____Placeholder_rarch_path_type } rarch_path_type ;
size_t path_get_realsize(enum rarch_path_type type)
{
   switch (type)
   {
      case 134:
         return sizeof(path_content);
      case 131:
         return sizeof(path_default_shader_preset);
      case 137:
         return sizeof(path_main_basename);
      case 132:
         return sizeof(path_core_options_file);
      case 128:
         return sizeof(subsystem_path);
      case 136:
         return sizeof(path_config_file);
      case 135:
         return sizeof(path_config_append_file);
      case 133:
         return sizeof(path_libretro);
      case 129:
      case 130:
         break;
   }

   return 0;
}
