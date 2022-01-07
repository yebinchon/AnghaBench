
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
 char* path_libretro ;
 char* path_main_basename ;
 char* subsystem_path ;

void path_clear(enum rarch_path_type type)
{
   switch (type)
   {
      case 128:
         *subsystem_path = '\0';
         break;
      case 133:
         *path_libretro = '\0';
         break;
      case 136:
         *path_config_file = '\0';
         break;
      case 134:
         *path_content = '\0';
         break;
      case 137:
         *path_main_basename = '\0';
         break;
      case 132:
         *path_core_options_file = '\0';
         break;
      case 131:
         *path_default_shader_preset = '\0';
         break;
      case 135:
         *path_config_append_file = '\0';
         break;
      case 129:
      case 130:
         break;
   }
}
