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
typedef  int /*<<< orphan*/  global_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  RARCH_PATH_CONFIG ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(void *data)
{
   global_t *global = (global_t*)data;
   if (FUNC5(RARCH_PATH_CONFIG))
   {
      FUNC1("[config] Loading default config.\n");
   }

   {
      const char *config_path = FUNC4(RARCH_PATH_CONFIG);
      FUNC1("[config] loading config from: %s.\n", config_path);

      if (!FUNC3(global, config_path, FUNC2()))
      {
         FUNC0("[config] couldn't find config at path: \"%s\"\n",
               config_path);
      }
   }
}