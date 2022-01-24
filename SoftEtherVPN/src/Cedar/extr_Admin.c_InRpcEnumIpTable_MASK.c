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
struct TYPE_7__ {int NumIpTable; TYPE_1__* IpTables; int /*<<< orphan*/  HubName; } ;
struct TYPE_6__ {int /*<<< orphan*/  RemoteHostname; void* RemoteItem; void* UpdatedTime; void* CreatedTime; void* DhcpAllocated; int /*<<< orphan*/  IpAddress; int /*<<< orphan*/  Ip; int /*<<< orphan*/  IpV6; int /*<<< orphan*/  SessionName; int /*<<< orphan*/  Key; } ;
typedef  TYPE_1__ RPC_ENUM_IP_TABLE_ITEM ;
typedef  TYPE_2__ RPC_ENUM_IP_TABLE ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,char*,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,size_t) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 
 TYPE_1__* FUNC11 (int) ; 

void FUNC12(RPC_ENUM_IP_TABLE *t, PACK *p)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC10(t, sizeof(RPC_ENUM_IP_TABLE));
	FUNC7(p, "HubName", t->HubName, sizeof(t->HubName));
	t->NumIpTable = FUNC1(p, "SessionName");
	t->IpTables = FUNC11(sizeof(RPC_ENUM_IP_TABLE_ITEM) * t->NumIpTable);

	for (i = 0;i < t->NumIpTable;i++)
	{
		RPC_ENUM_IP_TABLE_ITEM *e = &t->IpTables[i];

		e->Key = FUNC3(p, "Key", i);
		FUNC8(p, "SessionName", e->SessionName, sizeof(e->SessionName), i);
		e->Ip = FUNC5(p, "Ip", i);
		if (FUNC6(p, "IpV6", &e->IpV6, i) == false)
		{
			FUNC9(&e->IpV6, e->Ip);
		}
		FUNC4(p, "IpAddress", &e->IpAddress);
		e->DhcpAllocated = FUNC0(p, "DhcpAllocated", i);
		e->CreatedTime = FUNC2(p, "CreatedTime", i);
		e->UpdatedTime = FUNC2(p, "UpdatedTime", i);
		e->RemoteItem = FUNC0(p, "RemoteItem", i);
		FUNC8(p, "RemoteHostname", e->RemoteHostname, sizeof(e->RemoteHostname), i);
	}
}