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
 int /*<<< orphan*/  CMD_EVENT_UNLOAD_CORE ; 
 int /*<<< orphan*/  RARCH_PATH_CORE ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

__attribute__((used)) static int FUNC7(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   const char *path_core = FUNC4(RARCH_PATH_CORE);
   char *core_path       = !FUNC6(path_core)
      ? FUNC5(path_core) : NULL;

   if (!core_path)
      return 0;

   FUNC2(CMD_EVENT_UNLOAD_CORE);
   FUNC3(0, 0);

   if (FUNC0(core_path) != 0) { }

   FUNC1(core_path);

   return 0;
}