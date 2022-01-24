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
typedef  int u32 ;

/* Variables and functions */
 int KEY_SELECT ; 
 int KEY_START ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int select_pressed ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

void FUNC7(void)
{
   FUNC5("\n\nPress Start.\n\n");
   FUNC2(stdout);

   while (FUNC0())
   {
      u32 kDown;

      FUNC4();

      kDown = FUNC3();

      if (kDown & KEY_START)
         break;

      if (kDown & KEY_SELECT)
         FUNC1(0);

#if 0
      select_pressed = true;
#endif

      FUNC6(1000000);
   }
}