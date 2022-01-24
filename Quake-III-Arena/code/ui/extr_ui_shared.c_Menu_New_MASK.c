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
typedef  int /*<<< orphan*/  menuDef_t ;

/* Variables and functions */
 size_t MAX_MENUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * Menus ; 
 size_t menuCount ; 

void FUNC3(int handle) {
	menuDef_t *menu = &Menus[menuCount];

	if (menuCount < MAX_MENUS) {
		FUNC0(menu);
		if (FUNC1(handle, menu)) {
			FUNC2(menu);
			menuCount++;
		}
	}
}