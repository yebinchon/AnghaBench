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
typedef  size_t SceSize ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  RARCH_PATH_CONTENT ; 
 int /*<<< orphan*/  eboot_path ; 
 int /*<<< orphan*/  FUNC1 (char const*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(const char *path, bool should_load_game)
{
#if defined(IS_SALAMANDER)
   char argp[512] = {0};
   SceSize   args = 0;

   strlcpy(argp, eboot_path, sizeof(argp));
   args = strlen(argp) + 1;

#ifndef IS_SALAMANDER
   if (should_load_game && !path_is_empty(RARCH_PATH_CONTENT))
   {
      argp[args] = '\0';
      strlcat(argp + args, path_get(RARCH_PATH_CONTENT), sizeof(argp) - args);
      args += strlen(argp + args) + 1;
   }
#endif

   RARCH_LOG("Attempt to load executable: [%s].\n", path);
#if 0
   exitspawn_kernel(path, args, argp); /* I don't know what this is doing */
#endif
#endif
}