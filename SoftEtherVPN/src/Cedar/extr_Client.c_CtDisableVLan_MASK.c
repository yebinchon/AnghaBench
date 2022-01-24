#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  t ;
struct TYPE_19__ {int Enabled; int /*<<< orphan*/  Name; } ;
typedef  TYPE_2__ UNIX_VLAN ;
typedef  scalar_t__ UINT ;
struct TYPE_22__ {int /*<<< orphan*/  lock; int /*<<< orphan*/ * ClientSession; TYPE_1__* ClientOption; } ;
struct TYPE_21__ {int /*<<< orphan*/  AccountList; int /*<<< orphan*/  UnixVLanList; } ;
struct TYPE_20__ {int /*<<< orphan*/  DeviceName; } ;
struct TYPE_18__ {int /*<<< orphan*/  DeviceName; } ;
struct TYPE_17__ {scalar_t__ OsType; } ;
typedef  TYPE_3__ RPC_CLIENT_CREATE_VLAN ;
typedef  TYPE_4__ CLIENT ;
typedef  TYPE_5__ ACCOUNT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERR_OBJECT_NOT_FOUND ; 
 int /*<<< orphan*/  ERR_VLAN_INSTALL_ERROR ; 
 int /*<<< orphan*/  ERR_VLAN_IS_USED ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int /*<<< orphan*/ ) ; 
 TYPE_10__* FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 TYPE_5__* FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (char*) ; 
 scalar_t__ FUNC13 () ; 
 scalar_t__ FUNC14 () ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ OSTYPE_MACOS_X ; 
 TYPE_2__* FUNC16 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VLAN_ADAPTER_NAME_TAG ; 
 int /*<<< orphan*/  VLAN_ADAPTER_NAME_TAG_OLD ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,int) ; 

bool FUNC22(CLIENT *c, RPC_CLIENT_CREATE_VLAN *vlan)
{
	UINT i;
	bool used;
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

	// Check whether the virtual LAN card with the specified name is not
	// being used by one or more accounts
	used = false;
	FUNC10(c->AccountList);
	{
		for (i = 0;i < FUNC8(c->AccountList);i++)
		{
			ACCOUNT *a = FUNC7(c->AccountList, i);
			if (FUNC17(a->ClientOption->DeviceName, vlan->DeviceName) == 0)
			{
				FUNC9(a->lock);
				{
					if (a->ClientSession != NULL)
					{
						used = true;
					}
				}
				FUNC19(a->lock);
			}
		}
	}
	FUNC20(c->AccountList);

	// Search for the virtual LAN card
	FUNC10(c->UnixVLanList);
	{
		UNIX_VLAN *v, t;

		FUNC21(&t, sizeof(t));
		FUNC18(t.Name, sizeof(t.Name), vlan->DeviceName);

		v = FUNC16(c->UnixVLanList, &t);
		if (v == NULL)
		{
			FUNC20(c->UnixVLanList);
			FUNC3(c, ERR_OBJECT_NOT_FOUND);
			return false;
		}

		// Stop
		v->Enabled = false;
	}
	FUNC20(c->UnixVLanList);

	FUNC1(c);
	FUNC0(c);
	FUNC2(c);

	return true;

#else	// OS_WIN32

	// Check whether the virtual LAN card with the specified name is not
	// being used by one or more accounts
	used = false;
	LockList(c->AccountList);
	{
		for (i = 0;i < LIST_NUM(c->AccountList);i++)
		{
			ACCOUNT *a = LIST_DATA(c->AccountList, i);
			if (StrCmpi(a->ClientOption->DeviceName, vlan->DeviceName) == 0)
			{
				Lock(a->lock);
				{
					if (a->ClientSession != NULL)
					{
						used = true;
					}
				}
				Unlock(a->lock);
			}
		}
	}
	UnlockList(c->AccountList);

#if	0
	if (used)
	{
		// In using
		CiSetError(c, ERR_VLAN_IS_USED);
		return false;
	}
#endif


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

		Format(tmp, sizeof(tmp), "disablevlan %s", vlan->DeviceName);

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
		// Stop the virtual LAN card
		if (MsDisableVLan(vlan->DeviceName) == false)
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