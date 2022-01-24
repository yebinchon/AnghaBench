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
struct TYPE_7__ {int NumItem; TYPE_1__* Items; int /*<<< orphan*/  HubName; } ;
struct TYPE_6__ {void* TcpStatus; void* RecvSize; void* SendSize; void* LastCommTime; void* CreatedTime; void* DestPort; int /*<<< orphan*/  DestHost; void* DestIp; void* SrcPort; int /*<<< orphan*/  SrcHost; void* SrcIp; void* Protocol; void* Id; } ;
typedef  TYPE_1__ RPC_ENUM_NAT_ITEM ;
typedef  TYPE_2__ RPC_ENUM_NAT ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 
 TYPE_1__* FUNC6 (int) ; 

void FUNC7(RPC_ENUM_NAT *t, PACK *p)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC5(t, sizeof(RPC_ENUM_NAT));
	t->NumItem = FUNC0(p, "NumItem");
	FUNC3(p, "HubName", t->HubName, sizeof(t->HubName));
	t->Items = FUNC6(sizeof(RPC_ENUM_NAT_ITEM) * t->NumItem);
	for (i = 0;i < t->NumItem;i++)
	{
		RPC_ENUM_NAT_ITEM *e = &t->Items[i];

		e->Id = FUNC2(p, "Id", i);
		e->Protocol = FUNC2(p, "Protocol", i);
		e->SrcIp = FUNC2(p, "SrcIp", i);
		FUNC4(p, "SrcHost", e->SrcHost, sizeof(e->SrcHost), i);
		e->SrcPort = FUNC2(p, "SrcPort", i);
		e->DestIp = FUNC2(p, "DestIp", i);
		FUNC4(p, "DestHost", e->DestHost, sizeof(e->DestHost), i);
		e->DestPort = FUNC2(p, "DestPort", i);
		e->CreatedTime = FUNC1(p, "CreatedTime", i);
		e->LastCommTime = FUNC1(p, "LastCommTime", i);
		e->SendSize = FUNC1(p, "SendSize", i);
		e->RecvSize = FUNC1(p, "RecvSize", i);
		e->TcpStatus = FUNC2(p, "TcpStatus", i);
	}
}