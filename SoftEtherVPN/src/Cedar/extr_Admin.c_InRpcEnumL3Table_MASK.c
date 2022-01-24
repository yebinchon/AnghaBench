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
struct TYPE_7__ {int NumItem; TYPE_1__* Items; int /*<<< orphan*/  Name; } ;
struct TYPE_6__ {int /*<<< orphan*/  Metric; void* GatewayAddress; void* SubnetMask; void* NetworkAddress; } ;
typedef  TYPE_1__ RPC_L3TABLE ;
typedef  TYPE_2__ RPC_ENUM_L3TABLE ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int) ; 
 TYPE_1__* FUNC5 (int) ; 

void FUNC6(RPC_ENUM_L3TABLE *t, PACK *p)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC4(t, sizeof(RPC_ENUM_L3TABLE));
	t->NumItem = FUNC0(p, "NumItem");
	FUNC3(p, "Name", t->Name, sizeof(t->Name));
	t->Items = FUNC5(sizeof(RPC_L3TABLE) * t->NumItem);

	for (i = 0;i < t->NumItem;i++)
	{
		RPC_L3TABLE *e = &t->Items[i];

		e->NetworkAddress = FUNC2(p, "NetworkAddress", i);
		e->SubnetMask = FUNC2(p, "SubnetMask", i);
		e->GatewayAddress = FUNC2(p, "GatewayAddress", i);
		e->Metric = FUNC1(p, "Metric", i);
	}
}