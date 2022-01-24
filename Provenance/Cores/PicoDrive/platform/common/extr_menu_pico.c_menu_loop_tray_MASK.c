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
 int /*<<< orphan*/  IN_CFG_BLOCKING ; 
 int PBTN_MBACK ; 
 int PBTN_MENU ; 
 int PBTN_MOK ; 
 scalar_t__ PGS_RestartRun ; 
 int /*<<< orphan*/  PicoGameLoaded ; 
 int /*<<< orphan*/  e_menu_tray ; 
 scalar_t__ engineState ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(void)
{
	int ret = 1, sel = 0;

	FUNC3(PicoGameLoaded);

	FUNC1(0, IN_CFG_BLOCKING, 1);
	FUNC2(e_menu_tray, &sel);

	if (engineState != PGS_RestartRun) {
		engineState = PGS_RestartRun;
		ret = 0; /* no CD inserted */
	}

	while (FUNC0(NULL, 50) & (PBTN_MENU|PBTN_MOK|PBTN_MBACK))
		;
	FUNC1(0, IN_CFG_BLOCKING, 0);
	FUNC4();

	return ret;
}