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
typedef  int /*<<< orphan*/  cheat_file ;

/* Variables and functions */
 int PATH_MAX_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int) ; 

void FUNC3(void)
{
   char cheat_file[PATH_MAX_LENGTH];

   if (FUNC1(
            cheat_file, sizeof(cheat_file), true))
   {
      FUNC0("[Cheats]: Save game-specific cheatfile: %s\n", cheat_file);
      FUNC2(cheat_file, NULL, true);
   }
}