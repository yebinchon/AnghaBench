
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rarch_path_type { ____Placeholder_rarch_path_type } rarch_path_type ;
 int path_config_append_file ;
 int path_config_file ;
 int path_content ;
 int path_core_options_file ;
 int path_default_shader_preset ;
 int path_libretro ;
 int path_main_basename ;
 int string_is_empty (int ) ;
 int subsystem_path ;

bool path_is_empty(enum rarch_path_type type)
{
   switch (type)
   {
      case 131:
         if (string_is_empty(path_default_shader_preset))
            return 1;
         break;
      case 128:
         if (string_is_empty(subsystem_path))
            return 1;
         break;
      case 136:
         if (string_is_empty(path_config_file))
            return 1;
         break;
      case 132:
         if (string_is_empty(path_core_options_file))
            return 1;
         break;
      case 135:
         if (string_is_empty(path_config_append_file))
            return 1;
         break;
      case 134:
         if (string_is_empty(path_content))
            return 1;
         break;
      case 133:
         if (string_is_empty(path_libretro))
            return 1;
         break;
      case 137:
         if (string_is_empty(path_main_basename))
            return 1;
         break;
      case 129:
      case 130:
         break;
   }

   return 0;
}
