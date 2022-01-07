
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cheatfile; int savestate; int savefile; } ;
struct TYPE_5__ {TYPE_1__ name; } ;
typedef TYPE_2__ global_t ;


 int RARCH_OVERRIDE_SETTING_SAVE_PATH ;
 int RARCH_OVERRIDE_SETTING_STATE_PATH ;
 int fill_pathname_noext (int ,int ,char*,int) ;
 TYPE_2__ g_extern ;
 int path_main_basename ;
 int path_set_basename (char const*) ;
 int path_set_redirect () ;
 int retroarch_override_setting_is_set (int ,int *) ;

__attribute__((used)) static void path_set_names(const char *path)
{
   global_t *global = &g_extern;

   path_set_basename(path);

   if (global)
   {
      if (!retroarch_override_setting_is_set(RARCH_OVERRIDE_SETTING_SAVE_PATH, ((void*)0)))
         fill_pathname_noext(global->name.savefile, path_main_basename,
               ".srm", sizeof(global->name.savefile));

      if (!retroarch_override_setting_is_set(RARCH_OVERRIDE_SETTING_STATE_PATH, ((void*)0)))
         fill_pathname_noext(global->name.savestate, path_main_basename,
               ".state", sizeof(global->name.savestate));

      fill_pathname_noext(global->name.cheatfile, path_main_basename,
            ".cht", sizeof(global->name.cheatfile));
   }

   path_set_redirect();
}
