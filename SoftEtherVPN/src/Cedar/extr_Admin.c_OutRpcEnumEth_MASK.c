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
struct TYPE_5__ {size_t NumItem; TYPE_1__* Items; } ;
struct TYPE_4__ {int /*<<< orphan*/  NetworkConnectionName; int /*<<< orphan*/  DeviceName; } ;
typedef  TYPE_1__ RPC_ENUM_ETH_ITEM ;
typedef  TYPE_2__ RPC_ENUM_ETH ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

void FUNC4(PACK *p, RPC_ENUM_ETH *t)
{
	UINT i;
	// Validate arguments
	if (p == NULL || t == NULL)
	{
		return;
	}

	FUNC0(p, "NumItem", t->NumItem);

	FUNC3(p, "EthList");
	for (i = 0;i < t->NumItem;i++)
	{
		RPC_ENUM_ETH_ITEM *e = &t->Items[i];
		FUNC1(p, "DeviceName", e->DeviceName, i, t->NumItem);
		FUNC2(p, "NetworkConnectionName", e->NetworkConnectionName, i, t->NumItem);
	}
	FUNC3(p, NULL);
}