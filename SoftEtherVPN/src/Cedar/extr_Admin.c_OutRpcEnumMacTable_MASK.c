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
typedef  size_t UINT ;
struct TYPE_5__ {size_t NumMacTable; TYPE_1__* MacTables; int /*<<< orphan*/  HubName; } ;
struct TYPE_4__ {int /*<<< orphan*/  RemoteHostname; int /*<<< orphan*/  RemoteItem; int /*<<< orphan*/  UpdatedTime; int /*<<< orphan*/  CreatedTime; int /*<<< orphan*/  VlanId; int /*<<< orphan*/  MacAddress; int /*<<< orphan*/  SessionName; int /*<<< orphan*/  Key; } ;
typedef  TYPE_1__ RPC_ENUM_MAC_TABLE_ITEM ;
typedef  TYPE_2__ RPC_ENUM_MAC_TABLE ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 

void FUNC7(PACK *p, RPC_ENUM_MAC_TABLE *t)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC3(p, "HubName", t->HubName);

	FUNC6(p, "MacTable");
	for (i = 0;i < t->NumMacTable;i++)
	{
		RPC_ENUM_MAC_TABLE_ITEM *e = &t->MacTables[i];

		FUNC2(p, "Key", e->Key, i, t->NumMacTable);
		FUNC4(p, "SessionName", e->SessionName, i, t->NumMacTable);
		FUNC1(p, "MacAddress", e->MacAddress, sizeof(e->MacAddress), i, t->NumMacTable);
		FUNC2(p, "VlanId", e->VlanId, i, t->NumMacTable);
		FUNC5(p, "CreatedTime", e->CreatedTime, i, t->NumMacTable);
		FUNC5(p, "UpdatedTime", e->UpdatedTime, i, t->NumMacTable);
		FUNC0(p, "RemoteItem", e->RemoteItem, i, t->NumMacTable);
		FUNC4(p, "RemoteHostname", e->RemoteHostname, i, t->NumMacTable);
	}
	FUNC6(p, NULL);
}