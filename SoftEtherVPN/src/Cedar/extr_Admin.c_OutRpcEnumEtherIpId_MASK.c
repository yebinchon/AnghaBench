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
struct TYPE_5__ {int /*<<< orphan*/  Password; int /*<<< orphan*/  UserName; int /*<<< orphan*/  HubName; int /*<<< orphan*/  Id; } ;
struct TYPE_4__ {size_t NumItem; TYPE_2__* IdList; } ;
typedef  TYPE_1__ RPC_ENUM_ETHERIP_ID ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_2__ ETHERIP_ID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

void FUNC3(PACK *p, RPC_ENUM_ETHERIP_ID *t)
{
	UINT i;
	// Validate arguments
	if (p == NULL || t == NULL)
	{
		return;
	}

	FUNC0(p, "NumItem", t->NumItem);

	FUNC2(p, "Settings");
	for (i = 0;i < t->NumItem;i++)
	{
		ETHERIP_ID *e = &t->IdList[i];

		FUNC1(p, "Id", e->Id, i, t->NumItem);
		FUNC1(p, "HubName", e->HubName, i, t->NumItem);
		FUNC1(p, "UserName", e->UserName, i, t->NumItem);
		FUNC1(p, "Password", e->Password, i, t->NumItem);
	}
	FUNC2(p, NULL);
}