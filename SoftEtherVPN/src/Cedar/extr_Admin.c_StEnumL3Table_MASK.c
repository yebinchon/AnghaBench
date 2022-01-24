#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  name ;
typedef  size_t UINT ;
struct TYPE_20__ {TYPE_1__* Server; } ;
struct TYPE_19__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  TableList; } ;
struct TYPE_18__ {int /*<<< orphan*/  Metric; int /*<<< orphan*/  GatewayAddress; int /*<<< orphan*/  SubnetMask; int /*<<< orphan*/  NetworkAddress; } ;
struct TYPE_17__ {char* Name; int NumItem; TYPE_2__* Items; } ;
struct TYPE_16__ {char* Name; int /*<<< orphan*/  Metric; int /*<<< orphan*/  GatewayAddress; int /*<<< orphan*/  SubnetMask; int /*<<< orphan*/  NetworkAddress; } ;
struct TYPE_15__ {int /*<<< orphan*/ * Cedar; } ;
typedef  TYPE_1__ SERVER ;
typedef  TYPE_2__ RPC_L3TABLE ;
typedef  TYPE_3__ RPC_ENUM_L3TABLE ;
typedef  TYPE_4__ L3TABLE ;
typedef  TYPE_5__ L3SW ;
typedef  int /*<<< orphan*/  CEDAR ;
typedef  TYPE_6__ ADMIN ;

/* Variables and functions */
 size_t ERR_INVALID_PARAMETER ; 
 size_t ERR_LAYER3_SW_NOT_FOUND ; 
 size_t ERR_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (char*) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ *,char*) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_HUBNAME_LEN ; 
 int /*<<< orphan*/  NO_SUPPORT_FOR_BRIDGE ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int) ; 
 TYPE_2__* FUNC10 (int) ; 

UINT FUNC11(ADMIN *a, RPC_ENUM_L3TABLE *t)
{
	SERVER *s = a->Server;
	CEDAR *c = s->Cedar;
	UINT ret = ERR_NO_ERROR;
	L3SW *sw;
	char name[MAX_HUBNAME_LEN + 1];

	if (FUNC1(t->Name))
	{
		return ERR_INVALID_PARAMETER;
	}

	NO_SUPPORT_FOR_BRIDGE;

	FUNC7(name, sizeof(name), t->Name);
	FUNC0(t);
	FUNC9(t, sizeof(RPC_ENUM_L3TABLE));
	FUNC7(t->Name, sizeof(t->Name), name);

	sw = FUNC2(c, t->Name);

	if (sw == NULL)
	{
		ret = ERR_LAYER3_SW_NOT_FOUND;
	}
	else
	{
		UINT i;

		FUNC5(sw->lock);
		{
			t->NumItem = FUNC4(sw->TableList);
			t->Items = FUNC10(sizeof(RPC_L3TABLE) * t->NumItem);

			for (i = 0;i < t->NumItem;i++)
			{
				L3TABLE *tbl = FUNC3(sw->TableList, i);
				RPC_L3TABLE *e = &t->Items[i];

				FUNC7(e->Name, sizeof(e->Name), name);
				e->NetworkAddress = tbl->NetworkAddress;
				e->SubnetMask = tbl->SubnetMask;
				e->GatewayAddress = tbl->GatewayAddress;
				e->Metric = tbl->Metric;
			}
		}
		FUNC8(sw->lock);

		FUNC6(sw);
	}

	return ret;
}