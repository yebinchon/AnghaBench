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
struct retro_system_info {char* library_name; } ;
struct TYPE_4__ {char const* directory_input_remapping; } ;
struct TYPE_5__ {TYPE_1__ paths; } ;
typedef  TYPE_2__ settings_t ;
typedef  int /*<<< orphan*/  file ;
typedef  int /*<<< orphan*/  directory ;
typedef  int /*<<< orphan*/  content_dir ;

/* Variables and functions */
#define  ACTION_OK_REMAP_FILE_REMOVE_CONTENT_DIR 133 
#define  ACTION_OK_REMAP_FILE_REMOVE_CORE 132 
#define  ACTION_OK_REMAP_FILE_REMOVE_GAME 131 
#define  ACTION_OK_REMAP_FILE_SAVE_CONTENT_DIR 130 
#define  ACTION_OK_REMAP_FILE_SAVE_CORE 129 
#define  ACTION_OK_REMAP_FILE_SAVE_GAME 128 
 int /*<<< orphan*/  MESSAGE_QUEUE_CATEGORY_INFO ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_ICON_DEFAULT ; 
 int /*<<< orphan*/  MSG_ERROR_REMOVING_REMAP_FILE ; 
 int /*<<< orphan*/  MSG_ERROR_SAVING_REMAP_FILE ; 
 int /*<<< orphan*/  MSG_REMAP_FILE_REMOVED_SUCCESSFULLY ; 
 int /*<<< orphan*/  MSG_REMAP_FILE_SAVED_SUCCESSFULLY ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  RARCH_CTL_IS_REMAPS_CONTENT_DIR_ACTIVE ; 
 int /*<<< orphan*/  RARCH_CTL_IS_REMAPS_CORE_ACTIVE ; 
 int /*<<< orphan*/  RARCH_CTL_IS_REMAPS_GAME_ACTIVE ; 
 int /*<<< orphan*/  RARCH_CTL_SET_REMAPS_CONTENT_DIR_ACTIVE ; 
 int /*<<< orphan*/  RARCH_CTL_SET_REMAPS_CORE_ACTIVE ; 
 int /*<<< orphan*/  RARCH_CTL_SET_REMAPS_GAME_ACTIVE ; 
 int /*<<< orphan*/  RARCH_CTL_UNSET_REMAPS_CONTENT_DIR_ACTIVE ; 
 int /*<<< orphan*/  RARCH_CTL_UNSET_REMAPS_CORE_ACTIVE ; 
 int /*<<< orphan*/  RARCH_CTL_UNSET_REMAPS_GAME_ACTIVE ; 
 int /*<<< orphan*/  RARCH_PATH_BASENAME ; 
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct retro_system_info* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char const*) ; 

__attribute__((used)) static int FUNC15(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx,
      unsigned action_type)
{
   char directory[PATH_MAX_LENGTH];
   char file[PATH_MAX_LENGTH];
   char content_dir[PATH_MAX_LENGTH];
   settings_t *settings             = FUNC0();
   struct retro_system_info *system = FUNC12();
   const char *core_name            = system ? system->library_name : NULL;

   directory[0] = file[0]          = '\0';

   if (!FUNC14(core_name))
      FUNC1(
            directory,
            settings->paths.directory_input_remapping,
            core_name,
            sizeof(directory));

   switch (action_type)
   {
      case ACTION_OK_REMAP_FILE_SAVE_CORE:
      case ACTION_OK_REMAP_FILE_REMOVE_CORE:
         if (!FUNC14(core_name))
            FUNC1(file, core_name, core_name, sizeof(file));
         break;
      case ACTION_OK_REMAP_FILE_SAVE_GAME:
      case ACTION_OK_REMAP_FILE_REMOVE_GAME:
         if (!FUNC14(core_name))
            FUNC1(file, core_name,
                  FUNC7(FUNC8(RARCH_PATH_BASENAME)), sizeof(file));
         break;
      case ACTION_OK_REMAP_FILE_SAVE_CONTENT_DIR:
      case ACTION_OK_REMAP_FILE_REMOVE_CONTENT_DIR:
         if (!FUNC14(core_name))
         {
            FUNC2(content_dir, FUNC8(RARCH_PATH_BASENAME), sizeof(content_dir));
            FUNC1(file, core_name,
                  content_dir, sizeof(file));
         }
         break;
   }

   if (!FUNC9(directory))
       FUNC10(directory);

   if (action_type < ACTION_OK_REMAP_FILE_REMOVE_CORE)
   {
      if (FUNC4(file))
      {
         if (action_type == ACTION_OK_REMAP_FILE_SAVE_CORE)
            FUNC11(RARCH_CTL_SET_REMAPS_CORE_ACTIVE, NULL);
         else if (action_type == ACTION_OK_REMAP_FILE_SAVE_GAME)
            FUNC11(RARCH_CTL_SET_REMAPS_GAME_ACTIVE, NULL);
         else if (action_type == ACTION_OK_REMAP_FILE_SAVE_CONTENT_DIR)
            FUNC11(RARCH_CTL_SET_REMAPS_CONTENT_DIR_ACTIVE, NULL);

         FUNC13(
               FUNC6(MSG_REMAP_FILE_SAVED_SUCCESSFULLY),
               1, 100, true,
               NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
      }
      else
         FUNC13(
               FUNC6(MSG_ERROR_SAVING_REMAP_FILE),
               1, 100, true,
               NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
   }
   else
   {
      if (FUNC3(file))
      {
         if (action_type == ACTION_OK_REMAP_FILE_REMOVE_CORE &&
               FUNC11(RARCH_CTL_IS_REMAPS_CORE_ACTIVE, NULL))
         {
            FUNC11(RARCH_CTL_UNSET_REMAPS_CORE_ACTIVE, NULL);
            FUNC5(true);
         }

         else if (action_type == ACTION_OK_REMAP_FILE_REMOVE_GAME &&
               FUNC11(RARCH_CTL_IS_REMAPS_GAME_ACTIVE, NULL))
         {
            FUNC11(RARCH_CTL_UNSET_REMAPS_GAME_ACTIVE, NULL);
            FUNC5(true);
         }

         else if (action_type == ACTION_OK_REMAP_FILE_REMOVE_CONTENT_DIR &&
               FUNC11(RARCH_CTL_IS_REMAPS_CONTENT_DIR_ACTIVE, NULL))
         {
            FUNC11(RARCH_CTL_UNSET_REMAPS_CONTENT_DIR_ACTIVE, NULL);
            FUNC5(true);
         }

         FUNC13(
               FUNC6(MSG_REMAP_FILE_REMOVED_SUCCESSFULLY),
               1, 100, true,
               NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
      }
      else
         FUNC13(
               FUNC6(MSG_ERROR_REMOVING_REMAP_FILE),
               1, 100, true,
               NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
   }
   return 0;
}