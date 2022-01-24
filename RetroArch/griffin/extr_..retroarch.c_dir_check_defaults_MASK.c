#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char** dirs; } ;

/* Variables and functions */
 unsigned int DEFAULT_DIR_LAST ; 
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__ g_defaults ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char const*) ; 

void FUNC7(void)
{
   unsigned i;
   /* early return for people with a custom folder setup
      so it doesn't create unnecessary directories
    */
#if defined(ORBIS) || defined(ANDROID)
   if (path_is_valid("host0:app/custom.ini"))
#else
   if (FUNC4("custom.ini"))
#endif
      return;

   for (i = 0; i < DEFAULT_DIR_LAST; i++)
   {
      char       *new_path = NULL;
      const char *dir_path = g_defaults.dirs[i];

      if (FUNC6(dir_path))
         continue;

      new_path = (char*)FUNC2(PATH_MAX_LENGTH * sizeof(char));

      if (!new_path)
         continue;

      new_path[0] = '\0';
      FUNC0(new_path,
            dir_path,
            PATH_MAX_LENGTH * sizeof(char));

      if (!FUNC3(new_path))
         FUNC5(new_path);

      FUNC1(new_path);
   }
}