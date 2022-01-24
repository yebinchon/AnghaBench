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
 int /*<<< orphan*/  MENU_ENTRIES_CTL_SET_REFRESH ; 
 int /*<<< orphan*/  RARCH_MENU_CTL_SET_PREVENT_POPULATE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC3(unsigned type, const char *label)
{
   int ret                     = FUNC0(
         CMD_EVENT_UNLOAD_CORE);
   bool refresh                = false;

   FUNC2(MENU_ENTRIES_CTL_SET_REFRESH, &refresh);
   FUNC1(RARCH_MENU_CTL_SET_PREVENT_POPULATE, NULL);
   return ret;
}