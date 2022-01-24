#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {char* Name; int /*<<< orphan*/  MacAddress; int /*<<< orphan*/  Enabled; } ;
typedef  TYPE_2__ UNIX_VLAN ;
typedef  size_t UINT ;
struct TYPE_17__ {int /*<<< orphan*/  UnixVLanList; TYPE_1__* Cedar; } ;
struct TYPE_16__ {int NumItem; TYPE_4__** Items; } ;
struct TYPE_15__ {int /*<<< orphan*/  Version; int /*<<< orphan*/  DeviceName; int /*<<< orphan*/  MacAddress; int /*<<< orphan*/  Enabled; } ;
struct TYPE_14__ {size_t NumTokens; char** Token; } ;
struct TYPE_12__ {char* VerString; } ;
typedef  TYPE_3__ TOKEN_LIST ;
typedef  TYPE_4__ RPC_CLIENT_ENUM_VLAN_ITEM ;
typedef  TYPE_5__ RPC_CLIENT_ENUM_VLAN ;
typedef  TYPE_6__ CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VLAN_ADAPTER_NAME ; 
 int /*<<< orphan*/  VLAN_ADAPTER_NAME_OLD ; 
 int /*<<< orphan*/  VLAN_ADAPTER_NAME_TAG ; 
 int /*<<< orphan*/  VLAN_ADAPTER_NAME_TAG_OLD ; 
 void* FUNC12 (int) ; 

bool FUNC13(CLIENT *c, RPC_CLIENT_ENUM_VLAN *e)
{
	UINT i;
	TOKEN_LIST *t;
	// Validate arguments
	if (c == NULL || e == NULL)
	{
		return false;
	}

#ifndef	OS_WIN32

	FUNC5(c->UnixVLanList);
	{
		e->NumItem = FUNC4(c->UnixVLanList);
		e->Items = FUNC12(sizeof(RPC_CLIENT_ENUM_VLAN_ITEM *) * e->NumItem);

		for (i = 0;i < e->NumItem;i++)
		{
			RPC_CLIENT_ENUM_VLAN_ITEM *item;
			UNIX_VLAN *v;

			v = FUNC3(c->UnixVLanList, i);
			e->Items[i] = FUNC12(sizeof(RPC_CLIENT_ENUM_VLAN_ITEM));
			item = e->Items[i];

			item->Enabled = v->Enabled;
			FUNC0(item->MacAddress, sizeof(item->MacAddress), v->MacAddress, 6);
			FUNC10(item->DeviceName, sizeof(item->DeviceName), v->Name);
			FUNC10(item->Version, sizeof(item->Version), c->Cedar->VerString);
		}
	}
	FUNC11(c->UnixVLanList);

	return true;

#else	// OS_WIN32

	// Enumeration
	t = MsEnumNetworkAdapters(VLAN_ADAPTER_NAME, VLAN_ADAPTER_NAME_OLD);
	if (t == NULL)
	{
		// Enumeration failure
		e->NumItem = 0;
		e->Items = ZeroMalloc(0);
	}
	else
	{
		// Enumeration success
		e->NumItem = t->NumTokens;
		e->Items = ZeroMalloc(sizeof(RPC_CLIENT_ENUM_VLAN_ITEM *) * e->NumItem);

		for (i = 0;i < e->NumItem;i++)
		{
			char *tmp;
			RPC_CLIENT_ENUM_VLAN_ITEM *item;
			e->Items[i] = ZeroMalloc(sizeof(RPC_CLIENT_ENUM_VLAN_ITEM));
			item = e->Items[i];

			StrCpy(item->DeviceName, sizeof(item->DeviceName), t->Token[i]);
			item->Enabled = MsIsVLanEnabled(item->DeviceName);

			tmp = MsGetMacAddress(VLAN_ADAPTER_NAME_TAG, item->DeviceName);
			if (tmp == NULL)
			{
				tmp = MsGetMacAddress(VLAN_ADAPTER_NAME_TAG_OLD, item->DeviceName);
			}

			StrCpy(item->MacAddress, sizeof(item->MacAddress), tmp);
			Free(tmp);

			tmp = MsGetDriverVersion(VLAN_ADAPTER_NAME_TAG, item->DeviceName);
			if (tmp == NULL)
			{
				tmp = MsGetDriverVersion(VLAN_ADAPTER_NAME_TAG_OLD, item->DeviceName);
			}

			StrCpy(item->Version, sizeof(item->Version), tmp);
			Free(tmp);
		}

		FreeToken(t);
	}

	return true;

#endif	// OS_WIN32
}