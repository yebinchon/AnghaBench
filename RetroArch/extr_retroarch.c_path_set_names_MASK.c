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
struct TYPE_4__ {int /*<<< orphan*/  cheatfile; int /*<<< orphan*/  savestate; int /*<<< orphan*/  savefile; } ;
struct TYPE_5__ {TYPE_1__ name; } ;
typedef  TYPE_2__ global_t ;

/* Variables and functions */
 int /*<<< orphan*/  RARCH_OVERRIDE_SETTING_SAVE_PATH ; 
 int /*<<< orphan*/  RARCH_OVERRIDE_SETTING_STATE_PATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 TYPE_2__ g_extern ; 
 int /*<<< orphan*/  path_main_basename ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(const char *path)
{
   global_t   *global = &g_extern;

   FUNC1(path);

   if (global)
   {
      if (!FUNC3(RARCH_OVERRIDE_SETTING_SAVE_PATH, NULL))
         FUNC0(global->name.savefile, path_main_basename,
               ".srm", sizeof(global->name.savefile));

      if (!FUNC3(RARCH_OVERRIDE_SETTING_STATE_PATH, NULL))
         FUNC0(global->name.savestate, path_main_basename,
               ".state", sizeof(global->name.savestate));

      FUNC0(global->name.cheatfile, path_main_basename,
            ".cht", sizeof(global->name.cheatfile));
   }

   FUNC2();
}