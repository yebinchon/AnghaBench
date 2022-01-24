#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* library_name; } ;
struct TYPE_5__ {TYPE_1__ info; } ;
typedef  TYPE_2__ rarch_system_info_t ;
typedef  int /*<<< orphan*/  content_dir_name ;

/* Variables and functions */
 int /*<<< orphan*/  APPLICATION_SPECIAL_DIRECTORY_CONFIG ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_CATEGORY_INFO ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_ICON_DEFAULT ; 
 int /*<<< orphan*/  MSG_CONFIG_OVERRIDE_LOADED ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  RARCH_OVERRIDE_SETTING_SAVE_PATH ; 
 int /*<<< orphan*/  RARCH_OVERRIDE_SETTING_STATE_PATH ; 
 int /*<<< orphan*/  RARCH_PATH_BASENAME ; 
 int /*<<< orphan*/  RARCH_PATH_CONFIG ; 
 int /*<<< orphan*/  RARCH_PATH_CONFIG_APPEND ; 
 int /*<<< orphan*/  RARCH_PATH_CORE ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char const*,char const*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 char* FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (char const*) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,size_t) ; 

bool FUNC22(void)
{
   size_t path_size                       = PATH_MAX_LENGTH * sizeof(char);
   char *buf                              = NULL;
   char *core_path                        = NULL;
   char *game_path                        = NULL;
   char *content_path                     = NULL;
   char *config_directory                 = NULL;
   bool should_append                     = false;
   rarch_system_info_t *system            = FUNC17();
   const char *core_name                  = system ?
      system->info.library_name : NULL;
   const char *rarch_path_basename        = FUNC13(RARCH_PATH_BASENAME);
   const char *game_name                  = FUNC11(rarch_path_basename);
   char content_dir_name[PATH_MAX_LENGTH];

   if (!FUNC19(rarch_path_basename))
      FUNC6(content_dir_name,
            rarch_path_basename, sizeof(content_dir_name));

   if (FUNC19(core_name) || FUNC19(game_name))
      return false;

   game_path                              = (char*)
      FUNC9(PATH_MAX_LENGTH * sizeof(char));
   core_path                              = (char*)
      FUNC9(PATH_MAX_LENGTH * sizeof(char));
   content_path = (char*)
      FUNC9(PATH_MAX_LENGTH * sizeof(char));
   buf                                    = (char*)
      FUNC9(PATH_MAX_LENGTH * sizeof(char));
   config_directory                       = (char*)
      FUNC9(PATH_MAX_LENGTH * sizeof(char));
   config_directory[0] = core_path[0] = game_path[0] = '\0';

   FUNC4(config_directory, path_size,
         APPLICATION_SPECIAL_DIRECTORY_CONFIG);

   /* Concatenate strings into full paths for core_path, game_path, content_path */
   FUNC5(game_path,
         config_directory, core_name,
         game_name,
         ".cfg",
         path_size);

   FUNC5(content_path,
      config_directory, core_name,
      content_dir_name,
      ".cfg",
      path_size);

   FUNC5(core_path,
         config_directory, core_name,
         core_name,
         ".cfg",
         path_size);

   FUNC7(config_directory);

   /* per-core overrides */
   /* Create a new config file from core_path */
   if (FUNC1(core_path))
   {
      FUNC0("[Overrides] core-specific overrides found at %s.\n",
            core_path);

      FUNC14(RARCH_PATH_CONFIG_APPEND, core_path);

      should_append = true;
   }
   else
      FUNC0("[Overrides] no core-specific overrides found at %s.\n",
            core_path);

   /* per-content-dir overrides */
   /* Create a new config file from content_path */
   if (FUNC1(content_path))
   {
      char *temp_path = (char*)FUNC9(PATH_MAX_LENGTH * sizeof(char));

      temp_path[0]    = '\0';

      FUNC0("[Overrides] content-dir-specific overrides found at %s.\n",
            game_path);

      if (should_append)
      {
         FUNC0("[Overrides] content-dir-specific overrides stacking on top of previous overrides.\n");
         FUNC21(temp_path, FUNC13(RARCH_PATH_CONFIG_APPEND), path_size);
         FUNC20(temp_path, "|", path_size);
         FUNC20(temp_path, content_path, path_size);
      }
      else
         FUNC21(temp_path, content_path, path_size);

      FUNC14(RARCH_PATH_CONFIG_APPEND, temp_path);

      FUNC7(temp_path);

      should_append = true;
   }
   else
      FUNC0("[Overrides] no content-dir-specific overrides found at %s.\n",
         content_path);

   /* per-game overrides */
   /* Create a new config file from game_path */
   if (FUNC1(game_path))
   {
      char *temp_path = (char*)FUNC9(PATH_MAX_LENGTH * sizeof(char));

      temp_path[0]    = '\0';

      FUNC0("[Overrides] game-specific overrides found at %s.\n",
            game_path);

      if (should_append)
      {
         FUNC0("[Overrides] game-specific overrides stacking on top of previous overrides\n");
         FUNC21(temp_path, FUNC13(RARCH_PATH_CONFIG_APPEND), path_size);
         FUNC20(temp_path, "|", path_size);
         FUNC20(temp_path, game_path, path_size);
      }
      else
         FUNC21(temp_path, game_path, path_size);

      FUNC14(RARCH_PATH_CONFIG_APPEND, temp_path);

      FUNC7(temp_path);

      should_append = true;
   }
   else
      FUNC0("[Overrides] no game-specific overrides found at %s.\n",
            game_path);

   if (!should_append)
      goto error;

   /* Re-load the configuration with any overrides
    * that might have been found */
   buf[0] = '\0';

   /* Store the libretro_path we're using since it will be
    * overwritten by the override when reloading. */
   FUNC21(buf, FUNC13(RARCH_PATH_CORE), path_size);

   /* Toggle has_save_path to false so it resets */
   FUNC16(RARCH_OVERRIDE_SETTING_STATE_PATH, NULL);
   FUNC16(RARCH_OVERRIDE_SETTING_SAVE_PATH,  NULL);

   if (!FUNC3(FUNC8(),
            FUNC13(RARCH_PATH_CONFIG), FUNC2()))
      goto error;

   /* Restore the libretro_path we're using
    * since it will be overwritten by the override when reloading. */
   FUNC14(RARCH_PATH_CORE, buf);
   FUNC18(FUNC10(MSG_CONFIG_OVERRIDE_LOADED),
         1, 100, true,
         NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);

   /* Reset save paths. */
   FUNC15(RARCH_OVERRIDE_SETTING_STATE_PATH, NULL);
   FUNC15(RARCH_OVERRIDE_SETTING_SAVE_PATH, NULL);

   FUNC12(RARCH_PATH_CONFIG_APPEND);

   FUNC7(buf);
   FUNC7(core_path);
   FUNC7(content_path);
   FUNC7(game_path);
   return true;

error:
   FUNC7(buf);
   FUNC7(core_path);
   FUNC7(content_path);
   FUNC7(game_path);
   return false;
}