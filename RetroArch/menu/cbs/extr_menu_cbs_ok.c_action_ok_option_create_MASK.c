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
typedef  int /*<<< orphan*/  game_path ;
typedef  int /*<<< orphan*/  config_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  MESSAGE_QUEUE_CATEGORY_INFO ; 
 int /*<<< orphan*/  MESSAGE_QUEUE_ICON_DEFAULT ; 
 int /*<<< orphan*/  MSG_CORE_OPTIONS_FILE_CREATED_SUCCESSFULLY ; 
 int /*<<< orphan*/  MSG_ERROR_SAVING_CORE_OPTIONS_FILE ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  RARCH_PATH_CORE_OPTIONS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   char game_path[PATH_MAX_LENGTH];
   config_file_t *conf             = NULL;

   game_path[0] = '\0';

   if (!FUNC6(game_path, sizeof(game_path), true))
   {
      FUNC7(
            FUNC4(MSG_ERROR_SAVING_CORE_OPTIONS_FILE),
            1, 100, true,
            NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
      return 0;
   }

   if (!(conf = FUNC2(game_path)))
      if (!(conf = FUNC1()))
         return false;

   if (FUNC3(conf, game_path, true))
   {
      FUNC7(
            FUNC4(MSG_CORE_OPTIONS_FILE_CREATED_SUCCESSFULLY),
            1, 100, true,
            NULL, MESSAGE_QUEUE_ICON_DEFAULT, MESSAGE_QUEUE_CATEGORY_INFO);
      FUNC5(RARCH_PATH_CORE_OPTIONS, game_path);
   }
   FUNC0(conf);

   return 0;
}