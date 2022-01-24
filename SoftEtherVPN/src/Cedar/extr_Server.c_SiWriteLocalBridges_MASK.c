#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  name ;
typedef  scalar_t__ UINT ;
struct TYPE_5__ {TYPE_1__* Cedar; } ;
struct TYPE_4__ {int /*<<< orphan*/  LocalBridgeList; } ;
typedef  TYPE_2__ SERVER ;
typedef  int /*<<< orphan*/  LOCALBRIDGE ;
typedef  int /*<<< orphan*/  FOLDER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  GSF_LOCALBRIDGE_NO_DISABLE_OFFLOAD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

void FUNC11(FOLDER *f, SERVER *s)
{
	// Validate arguments
	if (s == NULL || f == NULL)
	{
		return;
	}

#ifdef	OS_WIN32
	CfgAddBool(f, "ShowAllInterfaces", Win32EthGetShowAllIf());

	CfgAddBool(f, "EnableSoftEtherKernelModeDriver", Win32GetEnableSeLow());
#endif	// OS_WIN32

#ifdef	UNIX_LINUX
	CfgAddBool(f, "DoNotDisableOffloading", GetGlobalServerFlag(GSF_LOCALBRIDGE_NO_DISABLE_OFFLOAD));
#endif	// UNIX_LINUX

	FUNC6(s->Cedar->LocalBridgeList);
	{
		UINT i;
		for (i = 0;i < FUNC5(s->Cedar->LocalBridgeList);i++)
		{
			LOCALBRIDGE *br = FUNC4(s->Cedar->LocalBridgeList, i);
			char name[MAX_SIZE];

			FUNC2(name, sizeof(name), "LocalBridge%u", i);
			FUNC7(FUNC1(f, name), br);
		}
	}
	FUNC8(s->Cedar->LocalBridgeList);
}