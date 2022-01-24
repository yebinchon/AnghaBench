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
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

void FUNC3()
{
	char *inf = "c:\\windows\\inf\\other\\Neo_TEST.inf";

	if (FUNC0(inf, 0) == OK)
	{
		FUNC2("DiInstallClass Ok.");
		if (FUNC1("Net", "NeoAdapter_TEST", NULL, NULL) == OK)
		{
			FUNC2("InstallNDIDevice Ok.\n");
		}
		else
		{
			FUNC2("InstallNDIDevice Failed.\n");
		}
	}
	else
	{
		FUNC2("DiInstallClass Failed. ");
	}
}