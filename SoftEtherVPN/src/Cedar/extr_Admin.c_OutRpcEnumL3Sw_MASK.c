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
struct TYPE_4__ {int /*<<< orphan*/  Online; int /*<<< orphan*/  Active; int /*<<< orphan*/  NumTables; int /*<<< orphan*/  NumInterfaces; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ RPC_ENUM_L3SW_ITEM ;
typedef  TYPE_2__ RPC_ENUM_L3SW ;
typedef  int /*<<< orphan*/  PACK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

void FUNC5(PACK *p, RPC_ENUM_L3SW *t)
{
	UINT i;
	// Validate arguments
	if (p == NULL || t == NULL)
	{
		return;
	}

	FUNC1(p, "NumItem", t->NumItem);

	FUNC4(p, "L3SWList");
	for (i = 0;i < t->NumItem;i++)
	{
		RPC_ENUM_L3SW_ITEM *s = &t->Items[i];

		FUNC3(p, "Name", s->Name, i, t->NumItem);
		FUNC2(p, "NumInterfaces", s->NumInterfaces, i, t->NumItem);
		FUNC2(p, "NumTables", s->NumTables, i, t->NumItem);
		FUNC0(p, "Active", s->Active, i, t->NumItem);
		FUNC0(p, "Online", s->Online, i, t->NumItem);
	}
	FUNC4(p, NULL);
}