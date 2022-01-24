#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  enum rarch_path_type { ____Placeholder_rarch_path_type } rarch_path_type ;

/* Variables and functions */
#define  RARCH_PATH_BASENAME 137 
#define  RARCH_PATH_CONFIG 136 
#define  RARCH_PATH_CONFIG_APPEND 135 
#define  RARCH_PATH_CONTENT 134 
#define  RARCH_PATH_CORE 133 
#define  RARCH_PATH_CORE_OPTIONS 132 
#define  RARCH_PATH_DEFAULT_SHADER_PRESET 131 
#define  RARCH_PATH_NAMES 130 
#define  RARCH_PATH_NONE 129 
#define  RARCH_PATH_SUBSYSTEM 128 
 char* path_config_append_file ; 
 char* path_config_file ; 
 char* path_content ; 
 char* path_core_options_file ; 
 char* path_default_shader_preset ; 
 int /*<<< orphan*/  FUNC0 (int const) ; 
 char* path_libretro ; 
 char* path_main_basename ; 
 char* subsystem_path ; 

char *FUNC1(enum rarch_path_type type)
{
   switch (type)
   {
      case RARCH_PATH_CONTENT:
         return path_content;
      case RARCH_PATH_DEFAULT_SHADER_PRESET:
         return path_default_shader_preset;
      case RARCH_PATH_BASENAME:
         return path_main_basename;
      case RARCH_PATH_CORE_OPTIONS:
         if (!FUNC0(RARCH_PATH_CORE_OPTIONS))
            return path_core_options_file;
         break;
      case RARCH_PATH_SUBSYSTEM:
         return subsystem_path;
      case RARCH_PATH_CONFIG:
         if (!FUNC0(RARCH_PATH_CONFIG))
            return path_config_file;
         break;
      case RARCH_PATH_CONFIG_APPEND:
         if (!FUNC0(RARCH_PATH_CONFIG_APPEND))
            return path_config_append_file;
         break;
      case RARCH_PATH_CORE:
         return path_libretro;
      case RARCH_PATH_NONE:
      case RARCH_PATH_NAMES:
         break;
   }

   return NULL;
}