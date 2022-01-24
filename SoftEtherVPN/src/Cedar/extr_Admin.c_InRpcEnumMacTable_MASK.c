#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_7__ {int NumMacTable; TYPE_1__* MacTables; int /*<<< orphan*/  HubName; } ;
struct TYPE_6__ {int /*<<< orphan*/  RemoteHostname; int /*<<< orphan*/  RemoteItem; void* UpdatedTime; void* CreatedTime; void* VlanId; int /*<<< orphan*/  MacAddress; int /*<<< orphan*/  SessionName; void* Key; } ;
typedef  TYPE_1__ RPC_ENUM_MAC_TABLE_ITEM ;
typedef  TYPE_2__ RPC_ENUM_MAC_TABLE ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*,size_t) ; 
 void* FUNC4 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 TYPE_1__* FUNC8 (int) ; 

void FUNC9(RPC_ENUM_MAC_TABLE *t, PACK *p)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC7(t, sizeof(RPC_ENUM_MAC_TABLE));
	FUNC5(p, "HubName", t->HubName, sizeof(t->HubName));
	t->NumMacTable = FUNC2(p, "SessionName");
	t->MacTables = FUNC8(sizeof(RPC_ENUM_MAC_TABLE_ITEM) * t->NumMacTable);

	for (i = 0;i < t->NumMacTable;i++)
	{
		RPC_ENUM_MAC_TABLE_ITEM *e = &t->MacTables[i];

		e->Key = FUNC4(p, "Key", i);
		FUNC6(p, "SessionName", e->SessionName, sizeof(e->SessionName), i);
		FUNC1(p, "MacAddress", e->MacAddress, sizeof(e->MacAddress), i);
		e->VlanId = FUNC4(p, "VlanId", i);
		e->CreatedTime = FUNC3(p, "CreatedTime", i);
		e->UpdatedTime = FUNC3(p, "UpdatedTime", i);
		e->RemoteItem = FUNC0(p, "RemoteItem", i);
		FUNC6(p, "RemoteHostname", e->RemoteHostname, sizeof(e->RemoteHostname), i);
	}
}