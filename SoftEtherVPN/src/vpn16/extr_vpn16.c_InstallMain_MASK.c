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
typedef  int /*<<< orphan*/  sysdir ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 scalar_t__ FUNC3 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*) ; 
 int MAX_PATH ; 
 scalar_t__ OK ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,...) ; 
 int FUNC7 (char*) ; 

void FUNC8(char *name)
{
	char sysdir[MAX_PATH];
	char windir[MAX_PATH];
	char infdir[MAX_PATH];
	char otherdir[MAX_PATH];
	char infname[MAX_PATH];
	char deviceid[MAX_PATH];
	char sysname[MAX_PATH];
	if (name == NULL)
	{
		return;
	}
	if (FUNC7(name) == 0 || FUNC7(name) >= 5)
	{
		return;
	}

	FUNC2(sysdir, sizeof(sysdir));

	FUNC1(windir, sysdir);

	FUNC6(infdir, "%s\\inf", windir);

	FUNC6(otherdir, "%s\\other", infdir);

	FUNC6(infname, "%s\\Neo_%s.inf", infdir, name);

	FUNC6(sysname, "%s\\Neo_%s.sys", sysdir, name);

	FUNC6(deviceid, "NeoAdapter_%s", name);

	if (FUNC4(infname) == FALSE)
	{
		FUNC5("Failed to open %s.", infname);
		return;
	}
	if (FUNC4(sysname) == FALSE)
	{
		FUNC5("Failed to open %s.", sysname);
		return;
	}

	if (FUNC0(infname, 0) != OK)
	{
		FUNC5("Failed to register %s.\n", infname);
		return;
	}

	if (FUNC3("Net", deviceid, NULL, NULL) != OK)
	{
		return;
	}
}