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
struct TYPE_5__ {int /*<<< orphan*/  Manufacturer; int /*<<< orphan*/  DeviceName; void* Type; void* DeviceId; } ;
typedef  TYPE_1__ RPC_CLIENT_ENUM_SECURE_ITEM ;
typedef  TYPE_2__ RPC_CLIENT_ENUM_SECURE ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,char*,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 void* FUNC4 (int) ; 

void FUNC5(RPC_CLIENT_ENUM_SECURE *e, PACK *p)
{
	UINT i;
	// Validate arguments
	if (e == NULL || p == NULL)
	{
		return;
	}

	FUNC3(e, sizeof(RPC_CLIENT_ENUM_SECURE));

	e->NumItem = FUNC1(p, "NumItem");
	e->Items = FUNC4(sizeof(RPC_CLIENT_ENUM_SECURE_ITEM *) * e->NumItem);
	for (i = 0;i < e->NumItem;i++)
	{
		RPC_CLIENT_ENUM_SECURE_ITEM *item = e->Items[i] = FUNC4(sizeof(RPC_CLIENT_ENUM_SECURE_ITEM));

		item->DeviceId = FUNC0(p, "DeviceId", i);
		item->Type = FUNC0(p, "Type", i);
		FUNC2(p, "DeviceName", item->DeviceName, sizeof(item->DeviceName), i);
		FUNC2(p, "Manufacturer", item->Manufacturer, sizeof(item->Manufacturer), i);
	}
}