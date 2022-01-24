#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT ;
struct TYPE_18__ {TYPE_1__* Server; } ;
struct TYPE_17__ {int /*<<< orphan*/  L3SwList; } ;
struct TYPE_16__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  Online; int /*<<< orphan*/  Active; int /*<<< orphan*/  TableList; int /*<<< orphan*/  IfList; int /*<<< orphan*/  Name; } ;
struct TYPE_15__ {size_t NumItem; TYPE_2__* Items; } ;
struct TYPE_14__ {size_t NumInterfaces; size_t NumTables; int /*<<< orphan*/  Online; int /*<<< orphan*/  Active; int /*<<< orphan*/  Name; } ;
struct TYPE_13__ {TYPE_5__* Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ RPC_ENUM_L3SW_ITEM ;
typedef  TYPE_3__ RPC_ENUM_L3SW ;
typedef  TYPE_4__ L3SW ;
typedef  TYPE_5__ CEDAR ;
typedef  TYPE_6__ ADMIN ;

/* Variables and functions */
 size_t ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NO_SUPPORT_FOR_BRIDGE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int) ; 
 TYPE_2__* FUNC9 (int) ; 

UINT FUNC10(ADMIN *a, RPC_ENUM_L3SW *t)
{
	UINT i;
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	UINT ret = ERR_NO_ERROR;

	NO_SUPPORT_FOR_BRIDGE;

	FUNC0(t);
	FUNC8(t, sizeof(RPC_ENUM_L3SW));

	FUNC4(c->L3SwList);
	{
		t->NumItem = FUNC2(c->L3SwList);
		t->Items = FUNC9(sizeof(RPC_ENUM_L3SW_ITEM) * t->NumItem);
		for (i = 0;i < FUNC2(c->L3SwList);i++)
		{
			L3SW *sw = FUNC1(c->L3SwList, i);
			RPC_ENUM_L3SW_ITEM *e = &t->Items[i];

			FUNC3(sw->lock);
			{
				FUNC5(e->Name, sizeof(e->Name), sw->Name);
				e->NumInterfaces = FUNC2(sw->IfList);
				e->NumTables = FUNC2(sw->TableList);
				e->Active = sw->Active;
				e->Online = sw->Online;
			}
			FUNC6(sw->lock);
		}
	}
	FUNC7(c->L3SwList);

	return ret;
}