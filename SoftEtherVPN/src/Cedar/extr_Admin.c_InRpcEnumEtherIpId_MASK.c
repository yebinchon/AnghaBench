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
struct TYPE_7__ {int /*<<< orphan*/  Password; int /*<<< orphan*/  UserName; int /*<<< orphan*/  HubName; int /*<<< orphan*/  Id; } ;
struct TYPE_6__ {int NumItem; TYPE_2__* IdList; } ;
typedef  TYPE_1__ RPC_ENUM_ETHERIP_ID ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_2__ ETHERIP_ID ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 TYPE_2__* FUNC3 (int) ; 

void FUNC4(RPC_ENUM_ETHERIP_ID *t, PACK *p)
{
	UINT i;
	// Validate arguments
	if (t == NULL || p == NULL)
	{
		return;
	}

	FUNC2(t, sizeof(RPC_ENUM_ETHERIP_ID));

	t->NumItem = FUNC0(p, "NumItem");
	t->IdList = FUNC3(sizeof(ETHERIP_ID) * t->NumItem);

	for (i = 0;i < t->NumItem;i++)
	{
		ETHERIP_ID *e = &t->IdList[i];

		FUNC1(p, "Id", e->Id, sizeof(e->Id), i);
		FUNC1(p, "HubName", e->HubName, sizeof(e->HubName), i);
		FUNC1(p, "UserName", e->UserName, sizeof(e->UserName), i);
		FUNC1(p, "Password", e->Password, sizeof(e->Password), i);
	}
}