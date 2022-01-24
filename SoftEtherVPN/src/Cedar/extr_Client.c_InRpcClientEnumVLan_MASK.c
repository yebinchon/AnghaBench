#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_6__ {int NumItem; TYPE_1__** Items; } ;
struct TYPE_5__ {int Enabled; int /*<<< orphan*/  Version; int /*<<< orphan*/  MacAddress; int /*<<< orphan*/  DeviceName; } ;
typedef  TYPE_1__ RPC_CLIENT_ENUM_VLAN_ITEM ;
typedef  TYPE_2__ RPC_CLIENT_ENUM_VLAN ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 void* FUNC4 (int) ; 

void FUNC5(RPC_CLIENT_ENUM_VLAN *v, PACK *p)
{
	UINT i;
	// Validate arguments
	if (v == NULL || p == NULL)
	{
		return;
	}

	FUNC3(v, sizeof(RPC_CLIENT_ENUM_VLAN));
	v->NumItem = FUNC1(p, "NumItem");
	v->Items = FUNC4(sizeof(RPC_CLIENT_ENUM_VLAN_ITEM *) * v->NumItem);

	for (i = 0;i < v->NumItem;i++)
	{
		RPC_CLIENT_ENUM_VLAN_ITEM *item = v->Items[i] =
			FUNC4(sizeof(RPC_CLIENT_ENUM_VLAN_ITEM));

		FUNC2(p, "DeviceName", item->DeviceName, sizeof(item->DeviceName), i);
		item->Enabled = FUNC0(p, "Enabled", i) ? true : false;
		FUNC2(p, "MacAddress", item->MacAddress, sizeof(item->MacAddress), i);
		FUNC2(p, "Version", item->Version, sizeof(item->Version), i);
	}
}