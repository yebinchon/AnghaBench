
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct rarch_main_wrap {int touched; int * libretro_path; int * content_path; int * state_path; int * sram_path; int * config_path; int verbose; int no_content; } ;
struct TYPE_3__ {int load_no_content; } ;
typedef TYPE_1__ rarch_system_info_t ;


 int RARCH_DIR_SAVEFILE ;
 int RARCH_DIR_SAVESTATE ;
 int RARCH_OVERRIDE_SETTING_LIBRETRO ;
 int RARCH_OVERRIDE_SETTING_VERBOSITY ;
 int RARCH_PATH_CONFIG ;
 int RARCH_PATH_CONTENT ;
 int RARCH_PATH_CORE ;
 void* dir_get (int ) ;
 int dir_is_empty (int ) ;
 int * path_get (int ) ;
 int path_is_empty (int ) ;
 int retroarch_override_setting_is_set (int ,int *) ;
 TYPE_1__* runloop_get_system_info () ;
 scalar_t__ string_is_empty (int *) ;
 int verbosity_is_enabled () ;

__attribute__((used)) static void menu_content_environment_get(int *argc, char *argv[],
      void *args, void *params_data)
{
   struct rarch_main_wrap *wrap_args = (struct rarch_main_wrap*)params_data;
   rarch_system_info_t *sys_info = runloop_get_system_info();

   if (!wrap_args)
      return;

   wrap_args->no_content = sys_info->load_no_content;

   if (!retroarch_override_setting_is_set(RARCH_OVERRIDE_SETTING_VERBOSITY, ((void*)0)))
      wrap_args->verbose = verbosity_is_enabled();

   wrap_args->touched = 1;
   wrap_args->config_path = ((void*)0);
   wrap_args->sram_path = ((void*)0);
   wrap_args->state_path = ((void*)0);
   wrap_args->content_path = ((void*)0);

   if (!path_is_empty(RARCH_PATH_CONFIG))
      wrap_args->config_path = path_get(RARCH_PATH_CONFIG);
   if (!dir_is_empty(RARCH_DIR_SAVEFILE))
      wrap_args->sram_path = dir_get(RARCH_DIR_SAVEFILE);
   if (!dir_is_empty(RARCH_DIR_SAVESTATE))
      wrap_args->state_path = dir_get(RARCH_DIR_SAVESTATE);
   if (!path_is_empty(RARCH_PATH_CONTENT))
      wrap_args->content_path = path_get(RARCH_PATH_CONTENT);
   if (!retroarch_override_setting_is_set(RARCH_OVERRIDE_SETTING_LIBRETRO, ((void*)0)))
      wrap_args->libretro_path = string_is_empty(path_get(RARCH_PATH_CORE)) ? ((void*)0) :
         path_get(RARCH_PATH_CORE);

}
