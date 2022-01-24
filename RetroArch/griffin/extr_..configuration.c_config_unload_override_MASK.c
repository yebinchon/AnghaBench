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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  RARCH_OVERRIDE_SETTING_SAVE_PATH ; 
 int /*<<< orphan*/  RARCH_OVERRIDE_SETTING_STATE_PATH ; 
 int /*<<< orphan*/  RARCH_PATH_CONFIG ; 
 int /*<<< orphan*/  RARCH_PATH_CONFIG_APPEND ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

bool FUNC8(void)
{
   FUNC4(RARCH_PATH_CONFIG_APPEND);

   /* Toggle has_save_path to false so it resets */
   FUNC7(RARCH_OVERRIDE_SETTING_STATE_PATH, NULL);
   FUNC7(RARCH_OVERRIDE_SETTING_SAVE_PATH,  NULL);

   if (!FUNC2(FUNC3(),
            FUNC5(RARCH_PATH_CONFIG), FUNC1()))
      return false;

   FUNC0("[Overrides] configuration overrides unloaded, original configuration restored.\n");

   /* Reset save paths */
   FUNC6(RARCH_OVERRIDE_SETTING_STATE_PATH, NULL);
   FUNC6(RARCH_OVERRIDE_SETTING_SAVE_PATH, NULL);

   return true;
}