#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  t ;
struct TYPE_14__ {int Enabled; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ UNIX_VLAN ;
struct TYPE_17__ {scalar_t__ OsType; } ;
struct TYPE_16__ {int /*<<< orphan*/  UnixVLanList; } ;
struct TYPE_15__ {int /*<<< orphan*/  DeviceName; } ;
typedef  TYPE_2__ RPC_CLIENT_CREATE_VLAN ;
typedef  TYPE_3__ CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERR_OBJECT_NOT_FOUND ; 
 int /*<<< orphan*/  ERR_VLAN_INSTALL_ERROR ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (char*) ; 
 scalar_t__ FUNC10 () ; 
 scalar_t__ FUNC11 () ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ OSTYPE_MACOS_X ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VLAN_ADAPTER_NAME_TAG ; 
 int /*<<< orphan*/  VLAN_ADAPTER_NAME_TAG_OLD ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int) ; 

bool FUNC17(CLIENT *c, RPC_CLIENT_CREATE_VLAN *vlan)
{
	// Validate arguments
	if (c == NULL || vlan == NULL)
	{
		return false;
	}

#ifndef	OS_WIN32

#ifdef	NO_VLAN
	if (GetOsInfo()->OsType == OSTYPE_MACOS_X)
	{
		// Can not be added or removed the virtual LAN card in MacOS X
		CiSetError(c, ERR_NOT_SUPPORTED);
		return false;
	}
#endif	// NO_VLAN

	// Search the virtual LAN card
	FUNC7(c->UnixVLanList);
	{
		UNIX_VLAN *v, t;

		FUNC16(&t, sizeof(t));
		FUNC14(t.Name, sizeof(t.Name), vlan->DeviceName);

		v = FUNC13(c->UnixVLanList, &t);
		if (v == NULL)
		{
			FUNC15(c->UnixVLanList);
			FUNC3(c, ERR_OBJECT_NOT_FOUND);
			return false;
		}

		// Enable
		v->Enabled = true;
	}
	FUNC15(c->UnixVLanList);

	FUNC1(c);
	FUNC0(c);
	FUNC2(c);

	return true;

#else	// OS_WIN32

	// Check whether the virtual LAN card are present
	if (MsIsVLanExists(VLAN_ADAPTER_NAME_TAG, vlan->DeviceName) == false &&
		MsIsVLanExists(VLAN_ADAPTER_NAME_TAG_OLD, vlan->DeviceName) == false)
	{
		CiSetError(c, ERR_OBJECT_NOT_FOUND);
		CiNotify(c);
		CiSendGlobalPulse(c);
		return false;
	}

	if (MsIs64BitWindows() && Is32() && MsIsAdmin())
	{
		// Execute the driver_installer to process since this Windows is 64 bit
		// but this code is 32 bit
		char tmp[MAX_SIZE];

		Format(tmp, sizeof(tmp), "enablevlan %s", vlan->DeviceName);

		if (MsExecDriverInstaller(tmp) == false)
		{
			CiSetError(c, ERR_VLAN_INSTALL_ERROR);
			CiNotify(c);
			CiSendGlobalPulse(c);
			return false;
		}
	}
	else
	{
		// Start the virtual LAN card
		if (MsEnableVLan(vlan->DeviceName) == false)
		{
			CiSetError(c, ERR_VLAN_INSTALL_ERROR);
			CiNotify(c);
			CiSendGlobalPulse(c);
			return false;
		}
	}

	CiNotify(c);
	CiSendGlobalPulse(c);

	return true;

#endif	// OS_WIN32

}