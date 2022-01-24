#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct retro_system_info {char* library_name; } ;
struct TYPE_8__ {scalar_t__ savestates_in_content_dir; scalar_t__ savefiles_in_content_dir; scalar_t__ sort_savestates_enable; scalar_t__ sort_savefiles_enable; } ;
struct TYPE_10__ {TYPE_1__ bools; } ;
typedef  TYPE_3__ settings_t ;
struct TYPE_9__ {char* savefile; char* savestate; char* cheatfile; } ;
struct TYPE_11__ {TYPE_2__ name; } ;
typedef  TYPE_4__ global_t ;
struct TYPE_12__ {struct retro_system_info info; } ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ENUM_LABEL_VALUE_NO_CORE ; 
 int /*<<< orphan*/  MSG_REDIRECTING_CHEATFILE_TO ; 
 int /*<<< orphan*/  MSG_REDIRECTING_SAVEFILE_TO ; 
 int /*<<< orphan*/  MSG_REDIRECTING_SAVESTATE_TO ; 
 int /*<<< orphan*/  MSG_REVERTING_SAVEFILE_DIRECTORY_TO ; 
 int /*<<< orphan*/  MSG_REVERTING_SAVESTATE_DIRECTORY_TO ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  RARCH_DIR_CURRENT_SAVEFILE ; 
 int /*<<< orphan*/  RARCH_DIR_CURRENT_SAVESTATE ; 
 int /*<<< orphan*/  RARCH_DIR_SAVEFILE ; 
 int /*<<< orphan*/  RARCH_DIR_SAVESTATE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char const*) ; 
 TYPE_3__* configuration_settings ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_4__ g_extern ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*) ; 
 char* path_main_basename ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 TYPE_5__ runloop_system ; 
 scalar_t__ FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,int) ; 

__attribute__((used)) static void FUNC14(void)
{
   size_t path_size                            = PATH_MAX_LENGTH * sizeof(char);
   char *new_savefile_dir                      = (char*)FUNC6(PATH_MAX_LENGTH * sizeof(char));
   char *new_savestate_dir                     = (char*)FUNC6(PATH_MAX_LENGTH * sizeof(char));
   global_t   *global                          = &g_extern;
   const char *old_savefile_dir                = FUNC1(RARCH_DIR_SAVEFILE);
   const char *old_savestate_dir               = FUNC1(RARCH_DIR_SAVESTATE);
   struct retro_system_info *system            = &runloop_system.info;
   settings_t *settings                        = configuration_settings;

   new_savefile_dir[0] = new_savestate_dir[0]  = '\0';

   /* Initialize current save directories
    * with the values from the config. */
   FUNC13(new_savefile_dir,  old_savefile_dir,  path_size);
   FUNC13(new_savestate_dir, old_savestate_dir, path_size);

   if (system && !FUNC11(system->library_name))
   {
#ifdef HAVE_MENU
      if (!string_is_equal(system->library_name,
               msg_hash_to_str(MENU_ENUM_LABEL_VALUE_NO_CORE)))
#endif
      {
         /* per-core saves: append the library_name to the save location */
         if (settings->bools.sort_savefiles_enable
               && !FUNC11(old_savefile_dir))
         {
            FUNC4(
                  new_savefile_dir,
                  old_savefile_dir,
                  system->library_name,
                  path_size);

            /* If path doesn't exist, try to create it,
             * if everything fails revert to the original path. */
            if (!FUNC9(new_savefile_dir))
               if (!FUNC10(new_savefile_dir))
               {
                  FUNC0("%s %s\n",
                        FUNC7(MSG_REVERTING_SAVEFILE_DIRECTORY_TO),
                        old_savefile_dir);

                  FUNC13(new_savefile_dir, old_savefile_dir, path_size);
               }
         }

         /* per-core states: append the library_name to the save location */
         if (settings->bools.sort_savestates_enable
               && !FUNC11(old_savestate_dir))
         {
            FUNC4(
                  new_savestate_dir,
                  old_savestate_dir,
                  system->library_name,
                  path_size);

            /* If path doesn't exist, try to create it.
             * If everything fails, revert to the original path. */
            if (!FUNC9(new_savestate_dir))
               if (!FUNC10(new_savestate_dir))
               {
                  FUNC0("%s %s\n",
                        FUNC7(MSG_REVERTING_SAVESTATE_DIRECTORY_TO),
                        old_savestate_dir);
                  FUNC13(new_savestate_dir,
                        old_savestate_dir,
                        path_size);
               }
         }
      }
   }

   /* Set savefile directory if empty to content directory */
   if (FUNC11(new_savefile_dir) || settings->bools.savefiles_in_content_dir)
   {
      FUNC13(new_savefile_dir, path_main_basename,
            path_size);
      FUNC8(new_savefile_dir);
   }

   /* Set savestate directory if empty based on content directory */
   if (FUNC11(new_savestate_dir) || settings->bools.savestates_in_content_dir)
   {
      FUNC13(new_savestate_dir, path_main_basename,
            path_size);
      FUNC8(new_savestate_dir);
   }

   if (global)
   {
      if (FUNC9(new_savefile_dir))
         FUNC13(global->name.savefile, new_savefile_dir,
               sizeof(global->name.savefile));

      if (FUNC9(new_savestate_dir))
         FUNC13(global->name.savestate, new_savestate_dir,
               sizeof(global->name.savestate));

      if (FUNC9(global->name.savefile))
      {
         FUNC3(global->name.savefile,
               !FUNC11(path_main_basename) ? path_main_basename :
                  system && !FUNC11(system->library_name) ? system->library_name : "",
               ".srm",
               sizeof(global->name.savefile));
         FUNC0("%s \"%s\".\n",
               FUNC7(MSG_REDIRECTING_SAVEFILE_TO),
               global->name.savefile);
      }

      if (FUNC9(global->name.savestate))
      {
         FUNC3(global->name.savestate,
               !FUNC11(path_main_basename) ? path_main_basename :
                  system && !FUNC11(system->library_name) ? system->library_name : "",
               ".state",
               sizeof(global->name.savestate));
         FUNC0("%s \"%s\".\n",
               FUNC7(MSG_REDIRECTING_SAVESTATE_TO),
               global->name.savestate);
      }

      if (FUNC9(global->name.cheatfile))
      {
         /* FIXME: Should this optionally use system->library_name like the others? */
         FUNC3(global->name.cheatfile,
               !FUNC11(path_main_basename) ? path_main_basename : "",
               ".state",
               sizeof(global->name.cheatfile));
         FUNC0("%s \"%s\".\n",
               FUNC7(MSG_REDIRECTING_CHEATFILE_TO),
               global->name.cheatfile);
      }
   }

   FUNC2(RARCH_DIR_CURRENT_SAVEFILE,  new_savefile_dir);
   FUNC2(RARCH_DIR_CURRENT_SAVESTATE, new_savestate_dir);
   FUNC5(new_savefile_dir);
   FUNC5(new_savestate_dir);
}