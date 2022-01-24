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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC4(const char *path,
      const char *label, unsigned type, size_t idx, size_t entry_idx)
{
   bool          refresh = false ;
   FUNC1(0, CHEAT_HANDLER_TYPE_EMU);
   FUNC0();
   FUNC3(MENU_ENTRIES_CTL_SET_REFRESH, &refresh);
   FUNC2(RARCH_MENU_CTL_SET_PREVENT_POPULATE, NULL);
   return 0 ;
}