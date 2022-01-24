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
 int /*<<< orphan*/  CHEAT_HANDLER_TYPE_EMU ; 
 int /*<<< orphan*/  MENU_ENTRIES_CTL_SET_REFRESH ; 
 int /*<<< orphan*/  RARCH_MENU_CTL_SET_PREVENT_POPULATE ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC4(unsigned type, const char *label,
      bool wraparound)
{
   bool refresh      = false;
   unsigned new_size = 0;

   if (FUNC0())
      new_size = FUNC0() - 1;
   FUNC3(MENU_ENTRIES_CTL_SET_REFRESH, &refresh);
   FUNC2(RARCH_MENU_CTL_SET_PREVENT_POPULATE, NULL);
   FUNC1(new_size, CHEAT_HANDLER_TYPE_EMU);

   return 0;
}