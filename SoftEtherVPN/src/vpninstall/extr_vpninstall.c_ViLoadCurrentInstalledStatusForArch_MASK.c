#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_3__ {int Supported; int CurrentInstalled; int /*<<< orphan*/  CurrentInstalledPathW; scalar_t__ CurrentInstalledBuild; } ;
typedef  TYPE_1__ VI_SETTING_ARCH ;
typedef  scalar_t__ UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int MAX_SIZE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,char*,int,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*,char*,int,int) ; 
 int /*<<< orphan*/  REG_LOCAL_MACHINE ; 
 int /*<<< orphan*/  SW_REG_KEY ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

void FUNC6(VI_SETTING_ARCH *a)
{
	char tmp[MAX_SIZE];
	UINT build;
	wchar_t *dir;
	// Validate arguments
	if (a == NULL)
	{
		return;
	}
	if (a->Supported == false)
	{
		// Unsupported
		return;
	}

	// Read from the registry
	FUNC0(tmp, sizeof(tmp), "%s\\%s", SW_REG_KEY, "vpnclient");

	build = FUNC2(REG_LOCAL_MACHINE, tmp, "InstalledBuild", false, true);

	dir = FUNC3(REG_LOCAL_MACHINE, tmp, "InstalledDir", false, true);

	if (build == 0 || FUNC4(dir))
	{
		// Not installed
		a->CurrentInstalled = false;
	}
	else
	{
		// Installed
		a->CurrentInstalled = true;
		a->CurrentInstalledBuild = build;

		FUNC5(a->CurrentInstalledPathW, sizeof(a->CurrentInstalledPathW), dir);
	}

	FUNC1(dir);
}