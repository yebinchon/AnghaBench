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
struct TYPE_2__ {int /*<<< orphan*/  inGameLoad; } ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qfalse ; 
 TYPE_1__ uiInfo ; 

void FUNC2() {
	const char *menuSet = FUNC0("ui_menuFiles");
	if (menuSet == NULL || menuSet[0] == '\0') {
		menuSet = "ui/menus.txt";
	}
	FUNC1(menuSet, qfalse);
	uiInfo.inGameLoad = qfalse;
}