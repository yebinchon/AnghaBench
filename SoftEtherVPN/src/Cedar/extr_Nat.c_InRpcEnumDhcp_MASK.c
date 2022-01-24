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
struct TYPE_6__ {int /*<<< orphan*/  Hostname; void* Mask; int /*<<< orphan*/  IpAddress; int /*<<< orphan*/  MacAddress; void* ExpireTime; void* LeasedTime; void* Id; } ;
typedef  TYPE_1__ RPC_ENUM_DHCP_ITEM ;
typedef  TYPE_2__ RPC_ENUM_DHCP ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*,size_t) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 
 TYPE_1__* FUNC8 (int) ; 

void FUNC9(RPC_ENUM_DHCP *t, PACK *p)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC7(t, sizeof(RPC_ENUM_DHCP));
	t->NumItem = FUNC1(p, "NumItem");
	t->Items = FUNC8(sizeof(RPC_ENUM_DHCP_ITEM) * t->NumItem);
	FUNC5(p, "HubName", t->HubName, sizeof(t->HubName));

	for (i = 0;i < t->NumItem;i++)
	{
		RPC_ENUM_DHCP_ITEM *e = &t->Items[i];

		e->Id = FUNC3(p, "Id", i);
		e->LeasedTime = FUNC2(p, "LeasedTime", i);
		e->ExpireTime = FUNC2(p, "ExpireTime", i);
		FUNC0(p, "MacAddress", e->MacAddress, 6, i);
		e->IpAddress = FUNC4(p, "IpAddress", i);
		e->Mask = FUNC3(p, "Mask", i);
		FUNC6(p, "Hostname", e->Hostname, sizeof(e->Hostname), i);
	}
}