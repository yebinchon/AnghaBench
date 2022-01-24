#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  t ;
struct TYPE_13__ {int /*<<< orphan*/  MacAddress; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ UNIX_VLAN ;
struct TYPE_15__ {int /*<<< orphan*/  UnixVLanList; } ;
struct TYPE_14__ {int /*<<< orphan*/  MacAddress; int /*<<< orphan*/  DeviceName; } ;
typedef  TYPE_2__ RPC_CLIENT_SET_VLAN ;
typedef  TYPE_3__ CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_OBJECT_NOT_FOUND ; 
 int /*<<< orphan*/  ERR_VLAN_ALREADY_EXISTS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VLAN_ADAPTER_NAME_TAG ; 
 int /*<<< orphan*/  VLAN_ADAPTER_NAME_TAG_OLD ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 

bool FUNC12(CLIENT *c, RPC_CLIENT_SET_VLAN *set)
{
	// Validate arguments
	if (c == NULL || set == NULL)
	{
		return false;
	}

#ifndef	OS_WIN32

	FUNC4(c->UnixVLanList);
	{
		UNIX_VLAN t, *r;
		FUNC11(&t, sizeof(t));
		FUNC8(t.Name, sizeof(t.Name), set->DeviceName);

		r = FUNC7(c->UnixVLanList, &t);
		if (r == NULL)
		{
			// Not exist
			FUNC3(c, ERR_VLAN_ALREADY_EXISTS);
			FUNC10(c->UnixVLanList);
			return false;
		}

		FUNC9(r->MacAddress, set->MacAddress);
	}
	FUNC10(c->UnixVLanList);

	FUNC1(c);
	FUNC0(c);
	FUNC2(c);

	return true;

#else	// OS_WIN32

	// Check whether the virtual LAN card with the specified name already exists
	if (MsIsVLanExists(VLAN_ADAPTER_NAME_TAG, set->DeviceName) == false &&
		MsIsVLanExists(VLAN_ADAPTER_NAME_TAG_OLD, set->DeviceName) == false)
	{
		// Not exist
		CiSetError(c, ERR_OBJECT_NOT_FOUND);
		return false;
	}

	// Configuring MAC address
	MsSetMacAddress(VLAN_ADAPTER_NAME_TAG, set->DeviceName, set->MacAddress);
	MsSetMacAddress(VLAN_ADAPTER_NAME_TAG_OLD, set->DeviceName, set->MacAddress);

	CiNotify(c);
	CiSendGlobalPulse(c);

	return true;

#endif	// OS_WIN32
}