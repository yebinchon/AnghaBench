#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_19__ {int /*<<< orphan*/  IpTable; } ;
struct TYPE_18__ {int /*<<< orphan*/  UpdatedTime; int /*<<< orphan*/  CreatedTime; int /*<<< orphan*/  DhcpAllocated; int /*<<< orphan*/  Ip; TYPE_1__* Session; } ;
struct TYPE_17__ {int NumIpTable; TYPE_3__* IpTables; int /*<<< orphan*/  HubName; } ;
struct TYPE_16__ {int /*<<< orphan*/  RemoteHostname; void* UpdatedTime; void* CreatedTime; int /*<<< orphan*/  DhcpAllocated; int /*<<< orphan*/  IpAddress; int /*<<< orphan*/  IpV6; int /*<<< orphan*/  Ip; int /*<<< orphan*/  SessionName; int /*<<< orphan*/  Key; } ;
struct TYPE_15__ {int /*<<< orphan*/ * Cedar; } ;
struct TYPE_14__ {char* Name; } ;
typedef  TYPE_2__ SERVER ;
typedef  TYPE_3__ RPC_ENUM_IP_TABLE_ITEM ;
typedef  TYPE_4__ RPC_ENUM_IP_TABLE ;
typedef  TYPE_5__ IP_TABLE_ENTRY ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_6__ HUB ;
typedef  int /*<<< orphan*/  CEDAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 size_t ERR_HUB_NOT_FOUND ; 
 size_t ERR_INTERNAL_ERROR ; 
 size_t ERR_NO_ERROR ; 
 TYPE_6__* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC14 (int) ; 

UINT FUNC15(SERVER *s, char *hubname, RPC_ENUM_IP_TABLE *t)
{
	CEDAR *c;
	UINT i;
	HUB *h = NULL;
	// Validate arguments
	if (s == NULL || hubname == NULL || t == NULL)
	{
		return ERR_INTERNAL_ERROR;
	}

	c = s->Cedar;

	FUNC6(c);
	{
		h = FUNC1(c, hubname);
	}
	FUNC12(c);

	if (h == NULL)
	{
		return ERR_HUB_NOT_FOUND;
	}

	FUNC10(t->HubName, sizeof(t->HubName), hubname);

	FUNC7(h->IpTable);
	{
		t->NumIpTable = FUNC5(h->IpTable);
		t->IpTables = FUNC14(sizeof(RPC_ENUM_IP_TABLE_ITEM) * t->NumIpTable);

		for (i = 0;i < t->NumIpTable;i++)
		{
			RPC_ENUM_IP_TABLE_ITEM *e = &t->IpTables[i];
			IP_TABLE_ENTRY *table = FUNC4(h->IpTable, i);

			e->Key = FUNC8(table);
			FUNC10(e->SessionName, sizeof(e->SessionName), table->Session->Name);
			e->Ip = FUNC3(&table->Ip);
			FUNC0(&e->IpV6, &table->Ip, sizeof(IP));
			FUNC0(&e->IpAddress, &table->Ip, sizeof(IP));
			e->DhcpAllocated = table->DhcpAllocated;
			e->CreatedTime = FUNC11(table->CreatedTime);
			e->UpdatedTime = FUNC11(table->UpdatedTime);

			FUNC2(e->RemoteHostname, sizeof(e->RemoteHostname));
		}
	}
	FUNC13(h->IpTable);

	FUNC9(h);

	return ERR_NO_ERROR;
}