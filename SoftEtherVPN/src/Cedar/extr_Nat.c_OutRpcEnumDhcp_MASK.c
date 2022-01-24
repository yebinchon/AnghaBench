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
struct TYPE_4__ {int /*<<< orphan*/  Hostname; int /*<<< orphan*/  Mask; int /*<<< orphan*/  IpAddress; int /*<<< orphan*/  MacAddress; int /*<<< orphan*/  ExpireTime; int /*<<< orphan*/  LeasedTime; int /*<<< orphan*/  Id; } ;
typedef  TYPE_1__ RPC_ENUM_DHCP_ITEM ;
typedef  TYPE_2__ RPC_ENUM_DHCP ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 

void FUNC8(PACK *p, RPC_ENUM_DHCP *t)
{
	UINT i;
	// Validate arguments
	if (p == NULL || t == NULL)
	{
		return;
	}

	FUNC1(p, "NumItem", t->NumItem);
	FUNC4(p, "HubName", t->HubName);

	FUNC7(p, "DhcpTable");
	for (i = 0;i < t->NumItem;i++)
	{
		RPC_ENUM_DHCP_ITEM *e = &t->Items[i];

		FUNC2(p, "Id", e->Id, i, t->NumItem);
		FUNC6(p, "LeasedTime", e->LeasedTime, i, t->NumItem);
		FUNC6(p, "ExpireTime", e->ExpireTime, i, t->NumItem);
		FUNC0(p, "MacAddress", e->MacAddress, 6, i, t->NumItem);
		FUNC3(p, "IpAddress", e->IpAddress, i, t->NumItem);
		FUNC2(p, "Mask", e->Mask, i, t->NumItem);
		FUNC5(p, "Hostname", e->Hostname, i, t->NumItem);
	}
	FUNC7(p, NULL);
}