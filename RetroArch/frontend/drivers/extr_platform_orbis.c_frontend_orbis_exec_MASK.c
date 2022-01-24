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
typedef  int /*<<< orphan*/  argp ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  RARCH_PATH_CONTENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(const char *path, bool should_load_game)
{
   char argp[512] = {0};
   int   args = 0;

#ifndef IS_SALAMANDER
   if (should_load_game && !FUNC2(RARCH_PATH_CONTENT))
   {
      argp[args] = '\0';
      FUNC3(argp + args, FUNC1(RARCH_PATH_CONTENT), sizeof(argp) - args);
      args += FUNC4(argp + args) + 1;
   }
#endif

   FUNC0("Attempt to load executable: [%s].\n", path);
   FUNC0("Attempt to load executable: %d [%s].\n", args, argp);
   //int ret =  sceAppMgrLoadExec(path, args==0? NULL : (char * const*)((const char*[]){argp, 0}), NULL);
   //RARCH_LOG("Attempt to load executable: [%d].\n", ret);

}