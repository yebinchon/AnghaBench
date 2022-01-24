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

/* Variables and functions */
 int /*<<< orphan*/  CELL_SYSMODULE_NET ; 
 int /*<<< orphan*/  CELL_SYSMODULE_SYSUTIL_NP ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  RARCH_PATH_CONTENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 () ; 

__attribute__((used)) static void FUNC11(const char *path, bool should_load_game)
{
#ifndef IS_SALAMANDER
   bool original_verbose = FUNC10();
   FUNC9();
#endif

   (void)should_load_game;

   FUNC0("Attempt to load executable: [%s].\n", path);

#ifndef IS_SALAMANDER
   if (should_load_game && !FUNC4(RARCH_PATH_CONTENT))
   {
      char game_path[256];
      FUNC6(game_path, FUNC3(RARCH_PATH_CONTENT), sizeof(game_path));

      const char * const spawn_argv[] = {
         game_path,
         NULL
      };

      FUNC2(path,
            (const char** const)spawn_argv, NULL);
   }
   else
#endif
   {
      FUNC2(path,
            NULL, NULL);
   }

   FUNC5();
   FUNC7();
   FUNC1(CELL_SYSMODULE_SYSUTIL_NP);
   FUNC1(CELL_SYSMODULE_NET);

#ifndef IS_SALAMANDER
   if (original_verbose)
      FUNC9();
   else
      FUNC8();
#endif
}