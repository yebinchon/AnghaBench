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
struct TYPE_5__ {size_t NumIpTable; TYPE_1__* IpTables; int /*<<< orphan*/  HubName; } ;
struct TYPE_4__ {int /*<<< orphan*/  RemoteHostname; int /*<<< orphan*/  RemoteItem; int /*<<< orphan*/  UpdatedTime; int /*<<< orphan*/  CreatedTime; int /*<<< orphan*/  DhcpAllocated; int /*<<< orphan*/  IpAddress; int /*<<< orphan*/  IpV6; int /*<<< orphan*/  Ip; int /*<<< orphan*/  SessionName; int /*<<< orphan*/  Key; } ;
typedef  TYPE_1__ RPC_ENUM_IP_TABLE_ITEM ;
typedef  TYPE_2__ RPC_ENUM_IP_TABLE ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 

void FUNC8(PACK *p, RPC_ENUM_IP_TABLE *t)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC4(p, "HubName", t->HubName);

	FUNC7(p, "IpTable");
	for (i = 0;i < t->NumIpTable;i++)
	{
		RPC_ENUM_IP_TABLE_ITEM *e = &t->IpTables[i];

		FUNC1(p, "Key", e->Key, i, t->NumIpTable);
		FUNC5(p, "SessionName", e->SessionName, i, t->NumIpTable);
		FUNC2(p, "Ip", e->Ip, i, t->NumIpTable);
		FUNC3(p, "IpV6", &e->IpV6, i, t->NumIpTable);
		FUNC3(p, "IpAddress", &e->IpAddress, i, t->NumIpTable);
		FUNC0(p, "DhcpAllocated", e->DhcpAllocated, i, t->NumIpTable);
		FUNC6(p, "CreatedTime", e->CreatedTime, i, t->NumIpTable);
		FUNC6(p, "UpdatedTime", e->UpdatedTime, i, t->NumIpTable);
		FUNC0(p, "RemoteItem", e->RemoteItem, i, t->NumIpTable);
		FUNC5(p, "RemoteHostname", e->RemoteHostname, i, t->NumIpTable);
	}
	FUNC7(p, NULL);
}