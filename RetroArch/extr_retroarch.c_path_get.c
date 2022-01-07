
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rarch_path_type { ____Placeholder_rarch_path_type } rarch_path_type ;
 char const* path_config_append_file ;
 char const* path_config_file ;
 char const* path_content ;
 char const* path_core_options_file ;
 char const* path_default_shader_preset ;
 int path_is_empty (int const) ;
 char const* path_libretro ;
 char const* path_main_basename ;
 char const* subsystem_path ;

const char *path_get(enum rarch_path_type type)
{
   switch (type)
   {
      case 134:
         return path_content;
      case 131:
         return path_default_shader_preset;
      case 137:
         return path_main_basename;
      case 132:
         if (!path_is_empty(132))
            return path_core_options_file;
         break;
      case 128:
         return subsystem_path;
      case 136:
         if (!path_is_empty(136))
            return path_config_file;
         break;
      case 135:
         if (!path_is_empty(135))
            return path_config_append_file;
         break;
      case 133:
         return path_libretro;
      case 129:
      case 130:
         break;
   }

   return ((void*)0);
}
