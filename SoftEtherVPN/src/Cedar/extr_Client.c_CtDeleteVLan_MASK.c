#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  t ;
struct TYPE_23__ {int /*<<< orphan*/  Name; } ;
typedef  TYPE_2__ UNIX_VLAN ;
typedef  scalar_t__ UINT ;
struct TYPE_26__ {TYPE_1__* ClientOption; } ;
struct TYPE_25__ {int /*<<< orphan*/  AccountList; int /*<<< orphan*/  UnixVLanList; } ;
struct TYPE_24__ {int /*<<< orphan*/  DeviceName; } ;
struct TYPE_22__ {int /*<<< orphan*/  DeviceName; } ;
struct TYPE_21__ {scalar_t__ OsType; } ;
typedef  TYPE_3__ RPC_CLIENT_CREATE_VLAN ;
typedef  TYPE_4__ CLIENT ;
typedef  TYPE_5__ ACCOUNT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  ERR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERR_OBJECT_NOT_FOUND ; 
 int /*<<< orphan*/  ERR_VLAN_INSTALL_ERROR ; 
 int /*<<< orphan*/  ERR_VLAN_IS_USED ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 TYPE_10__* FUNC9 () ; 
 scalar_t__ FUNC10 () ; 
 TYPE_5__* FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int MAX_SIZE ; 
 int FUNC14 (char*) ; 
 scalar_t__ FUNC15 () ; 
 scalar_t__ FUNC16 () ; 
 int FUNC17 () ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ OSTYPE_MACOS_X ; 
 TYPE_2__* FUNC20 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VLAN_ADAPTER_NAME_TAG ; 
 int /*<<< orphan*/  VLAN_ADAPTER_NAME_TAG_OLD ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*,int) ; 

bool FUNC26(CLIENT *c, RPC_CLIENT_CREATE_VLAN *d)
{
	UINT i;
	bool used;
	// Validate arguments
	if (c == NULL || d == NULL)
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
	FUNC13(c->AccountList);
	{
		for (i = 0;i < FUNC12(c->AccountList);i++)
		{
			ACCOUNT *a = FUNC11(c->AccountList, i);
			if (FUNC21(a->ClientOption->DeviceName, d->DeviceName) == 0)
			{
				used = true;
			}
		}
	}
	FUNC24(c->AccountList);

#if	0
	if (used)
	{
		// In using
		CiSetError(c, ERR_VLAN_IS_USED);
		return false;
	}
#endif

	// Search for the virtual LAN card
	FUNC13(c->UnixVLanList);
	{
		UNIX_VLAN *v, t;

		FUNC25(&t, sizeof(t));
		FUNC22(t.Name, sizeof(t.Name), d->DeviceName);

		v = FUNC20(c->UnixVLanList, &t);
		if (v == NULL)
		{
			FUNC24(c->UnixVLanList);
			FUNC5(c, ERR_OBJECT_NOT_FOUND);
			return false;
		}

		// Remove
		if (FUNC6(c->UnixVLanList, v))
		{
			FUNC8(v);
		}

		FUNC0(c, "LC_DELETE_VLAN", d->DeviceName);

		FUNC23(d->DeviceName);
	}
	FUNC24(c->UnixVLanList);

	FUNC1(c);

	FUNC3(c);
	FUNC2(c);
	FUNC4(c);

	return true;

#else	// OS_WIN32

	if (MsIsNt() == false)
	{
		// Not available in Win9x
		CiSetError(c, ERR_NOT_SUPPORTED);
		return false;
	}

	// Check whether the virtual LAN card are present
	if (MsIsVLanExists(VLAN_ADAPTER_NAME_TAG, d->DeviceName) == false &&
		MsIsVLanExists(VLAN_ADAPTER_NAME_TAG_OLD, d->DeviceName) == false)
	{
		CiSetError(c, ERR_OBJECT_NOT_FOUND);
		return false;
	}

	// Check whether the virtual LAN card with the specified name is not
	// being used by one or more accounts
	used = false;
	LockList(c->AccountList);
	{
		for (i = 0;i < LIST_NUM(c->AccountList);i++)
		{
			ACCOUNT *a = LIST_DATA(c->AccountList, i);
			if (StrCmpi(a->ClientOption->DeviceName, d->DeviceName) == 0)
			{
				used = true;
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

	if (MsIs64BitWindows() && Is32() && MsIsAdmin())
	{
		// Execute the driver_installer to process since this Windows is 64 bit
		// but this code is 32 bit
		char tmp[MAX_SIZE];

		Format(tmp, sizeof(tmp), "uninstvlan %s", d->DeviceName);

		if (MsExecDriverInstaller(tmp) == false)
		{
			CiSetError(c, ERR_VLAN_INSTALL_ERROR);
			return false;
		}
	}
	else
	{
		// Delete the virtual LAN card directly
		if (MsUninstallVLan(d->DeviceName) == false)
		{
			CiSetError(c, ERR_VLAN_INSTALL_ERROR);
			CiNotify(c);
			CiSendGlobalPulse(c);
			return false;
		}
	}

	CLog(c, "LC_DELETE_VLAN", d->DeviceName);

	CiNormalizeAccountVLan(c);

	CiNotify(c);
	CiSendGlobalPulse(c);

	return true;

#endif	// OS_WIN32

}