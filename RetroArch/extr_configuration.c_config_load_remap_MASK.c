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
typedef  int /*<<< orphan*/  config_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  MESSAGE_QUEUE_CATEGORY_INFO ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_ICON_DEFAULT ; 
 int /*<<< orphan*/  MSG_GAME_REMAP_FILE_LOADED ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  RARCH_CTL_SET_REMAPS_CONTENT_DIR_ACTIVE ; 
 int /*<<< orphan*/  RARCH_CTL_SET_REMAPS_CORE_ACTIVE ; 
 int /*<<< orphan*/  RARCH_CTL_SET_REMAPS_GAME_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  RARCH_PATH_BASENAME ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char const*,char const*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 (char const*) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (char const*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char const*,size_t) ; 

bool FUNC16(const char *directory_input_remapping)
{
   size_t path_size                       = PATH_MAX_LENGTH * sizeof(char);
   config_file_t *new_conf                = NULL;
   char *remap_directory                  = NULL;
   char *core_path                        = NULL;
   char *game_path                        = NULL;
   char *content_path                     = NULL;
   rarch_system_info_t *system            = FUNC12();
   const char *core_name                  = system ? system->info.library_name : NULL;
   const char *rarch_path_basename        = FUNC10(RARCH_PATH_BASENAME);
   const char *game_name                  = FUNC9(rarch_path_basename);
   char content_dir_name[PATH_MAX_LENGTH];

   if (FUNC14(core_name) || FUNC14(game_name))
      return false;

   /* Remap directory: remap_directory.
    * Try remap directory setting, no fallbacks defined */
   if (FUNC14(directory_input_remapping))
      return false;

   if (!FUNC14(rarch_path_basename))
      FUNC3(content_dir_name,
            rarch_path_basename, sizeof(content_dir_name));

   /* path to the directory containing retroarch.cfg (prefix)    */
   remap_directory                        = (char*)
      FUNC7(PATH_MAX_LENGTH * sizeof(char));
   /* final path for core-specific configuration (prefix+suffix) */
   core_path                              = (char*)
      FUNC7(PATH_MAX_LENGTH * sizeof(char));
   /* final path for game-specific configuration (prefix+suffix) */
   game_path                              = (char*)
      FUNC7(PATH_MAX_LENGTH * sizeof(char));
   /* final path for content-dir-specific configuration (prefix+suffix) */
   content_path = (char*)
      FUNC7(PATH_MAX_LENGTH * sizeof(char));
   remap_directory[0] = core_path[0] = game_path[0] = '\0';

   FUNC15(remap_directory, directory_input_remapping, path_size);
   FUNC0("[Remaps]: remap directory: %s\n", remap_directory);

   /* Concatenate strings into full paths for core_path, game_path */
   FUNC2(core_path,
         remap_directory, core_name,
         core_name,
         ".rmp",
         path_size);

   FUNC2(content_path,
         remap_directory, core_name,
         content_dir_name,
         ".rmp",
         path_size);

   FUNC2(game_path,
         remap_directory, core_name,
         game_name,
         ".rmp",
         path_size);

   FUNC6(false);

   /* If a game remap file exists, load it. */
   if ((new_conf = FUNC1(game_path)))
   {
      FUNC0("[Remaps]: game-specific remap found at %s.\n", game_path);
      if (FUNC5(new_conf, game_path))
      {
         FUNC11(RARCH_CTL_SET_REMAPS_GAME_ACTIVE, NULL);
         goto success;
      }
   }

   /* If a content-dir remap file exists, load it. */
   if ((new_conf = FUNC1(content_path)))
   {
      FUNC0("[Remaps]: content-dir-specific remap found at %s.\n", content_path);
      if (FUNC5(new_conf, content_path))
      {
         FUNC11(RARCH_CTL_SET_REMAPS_CONTENT_DIR_ACTIVE, NULL);
         goto success;
      }
   }

   /* If a core remap file exists, load it. */
   if ((new_conf = FUNC1(core_path)))
   {
      FUNC0("[Remaps]: core-specific remap found at %s.\n", core_path);
      if (FUNC5(new_conf, core_path))
      {
         FUNC11(RARCH_CTL_SET_REMAPS_CORE_ACTIVE, NULL);
         goto success;
      }
   }

   new_conf = NULL;

   FUNC4(content_path);
   FUNC4(remap_directory);
   FUNC4(core_path);
   FUNC4(game_path);
   return false;

success:
   FUNC13(FUNC8(
            MSG_GAME_REMAP_FILE_LOADED), 1, 100, true,
         NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
   FUNC4(content_path);
   FUNC4(remap_directory);
   FUNC4(core_path);
   FUNC4(game_path);
   return true;
}