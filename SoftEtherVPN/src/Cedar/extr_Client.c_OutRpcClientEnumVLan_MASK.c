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
struct TYPE_5__ {size_t NumItem; TYPE_1__** Items; } ;
struct TYPE_4__ {int /*<<< orphan*/  Version; int /*<<< orphan*/  MacAddress; int /*<<< orphan*/  Enabled; int /*<<< orphan*/  DeviceName; } ;
typedef  TYPE_1__ RPC_CLIENT_ENUM_VLAN_ITEM ;
typedef  TYPE_2__ RPC_CLIENT_ENUM_VLAN ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

void FUNC4(PACK *p, RPC_CLIENT_ENUM_VLAN *v)
{
	UINT i;
	// Validate arguments
	if (v == NULL || p == NULL)
	{
		return;
	}

	FUNC1(p, "NumItem", v->NumItem);

	FUNC3(p, "VLanList");
	for (i = 0;i < v->NumItem;i++)
	{
		RPC_CLIENT_ENUM_VLAN_ITEM *item = v->Items[i];

		FUNC2(p, "DeviceName", item->DeviceName, i, v->NumItem);
		FUNC0(p, "Enabled", item->Enabled, i, v->NumItem);
		FUNC2(p, "MacAddress", item->MacAddress, i, v->NumItem);
		FUNC2(p, "Version", item->Version, i, v->NumItem);
	}
	FUNC3(p, NULL);
}