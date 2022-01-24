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
struct TYPE_7__ {int NumItem; TYPE_1__* Items; } ;
struct TYPE_6__ {int /*<<< orphan*/  NetworkConnectionName; int /*<<< orphan*/  DeviceName; } ;
typedef  TYPE_1__ RPC_ENUM_ETH_ITEM ;
typedef  TYPE_2__ RPC_ENUM_ETH ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 TYPE_1__* FUNC4 (int) ; 

void FUNC5(RPC_ENUM_ETH *t, PACK *p)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC3(t, sizeof(RPC_ENUM_ETH));
	t->NumItem = FUNC0(p, "NumItem");
	t->Items = FUNC4(sizeof(RPC_ENUM_ETH_ITEM) * t->NumItem);

	for (i = 0;i < t->NumItem;i++)
	{
		RPC_ENUM_ETH_ITEM *e = &t->Items[i];
		FUNC1(p, "DeviceName", e->DeviceName, sizeof(e->DeviceName), i);
		FUNC2(p, "NetworkConnectionName", e->NetworkConnectionName, sizeof(e->NetworkConnectionName), i);
	}
}