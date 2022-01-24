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
struct TYPE_5__ {size_t NumItem; TYPE_1__* Items; int /*<<< orphan*/  HubName; } ;
struct TYPE_4__ {int /*<<< orphan*/  TcpStatus; int /*<<< orphan*/  RecvSize; int /*<<< orphan*/  SendSize; int /*<<< orphan*/  LastCommTime; int /*<<< orphan*/  CreatedTime; int /*<<< orphan*/  DestPort; int /*<<< orphan*/  DestHost; int /*<<< orphan*/  DestIp; int /*<<< orphan*/  SrcPort; int /*<<< orphan*/  SrcHost; int /*<<< orphan*/  SrcIp; int /*<<< orphan*/  Protocol; int /*<<< orphan*/  Id; } ;
typedef  TYPE_1__ RPC_ENUM_NAT_ITEM ;
typedef  TYPE_2__ RPC_ENUM_NAT ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 

void FUNC8(PACK *p, RPC_ENUM_NAT *t)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC0(p, "NumItem", t->NumItem);
	FUNC4(p, "HubName", t->HubName);

	FUNC7(p, "NatTable");
	for (i = 0;i < t->NumItem;i++)
	{
		RPC_ENUM_NAT_ITEM *e = &t->Items[i];

		FUNC2(p, "Id", e->Id, i, t->NumItem);
		FUNC2(p, "Protocol", e->Protocol, i, t->NumItem);
		FUNC3(p, "SrcIp", e->SrcIp, i, t->NumItem);
		FUNC5(p, "SrcHost", e->SrcHost, i, t->NumItem);
		FUNC2(p, "SrcPort", e->SrcPort, i, t->NumItem);
		FUNC3(p, "DestIp", e->DestIp, i, t->NumItem);
		FUNC5(p, "DestHost", e->DestHost, i, t->NumItem);
		FUNC2(p, "DestPort", e->DestPort, i, t->NumItem);
		FUNC6(p, "CreatedTime", e->CreatedTime, i, t->NumItem);
		FUNC6(p, "LastCommTime", e->LastCommTime, i, t->NumItem);
		FUNC1(p, "SendSize", e->SendSize, i, t->NumItem);
		FUNC1(p, "RecvSize", e->RecvSize, i, t->NumItem);
		FUNC2(p, "TcpStatus", e->TcpStatus, i, t->NumItem);
	}
	FUNC7(p, NULL);
}