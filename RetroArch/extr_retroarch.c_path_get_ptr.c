
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rarch_path_type { ____Placeholder_rarch_path_type } rarch_path_type ;
 char* path_config_append_file ;
 char* path_config_file ;
 char* path_content ;
 char* path_core_options_file ;
 char* path_default_shader_preset ;
 int path_is_empty (int const) ;
 char* path_libretro ;
 char* path_main_basename ;
 char* subsystem_path ;

char *path_get_ptr(enum rarch_path_type type)
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
