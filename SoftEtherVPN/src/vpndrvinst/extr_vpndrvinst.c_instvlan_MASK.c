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
typedef  int UINT ;
typedef  int /*<<< orphan*/  MS_DRIVER_VER ;
typedef  int /*<<< orphan*/  KAKUSHI ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  VLAN_ADAPTER_NAME_TAG ; 
 int /*<<< orphan*/  VLAN_CONNECTION_NAME ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

void FUNC10(UINT num, char **arg)
{
	KAKUSHI *k = NULL;
	MS_DRIVER_VER ver;
	bool ok;
	if (num < 1)
	{
		return;
	}

	FUNC4(L"VPN", FUNC8("DEFAULT_FONT"), FUNC7("DEFAULT_FONT_SIZE"));

	if (FUNC6())
	{
		k = FUNC3();
	}

	FUNC0(&ver);

	ok = FUNC5(VLAN_ADAPTER_NAME_TAG, VLAN_CONNECTION_NAME, arg[0], &ver);

	FUNC1(k);

	FUNC2();

	if (ok == false)
	{
		FUNC9(1);
	}
	else
	{
		FUNC9(0);
	}
}