#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int Active; int /*<<< orphan*/  lock; int /*<<< orphan*/  TableList; TYPE_1__* Cedar; } ;
struct TYPE_12__ {scalar_t__ Metric; int GatewayAddress; } ;
struct TYPE_11__ {int /*<<< orphan*/  Server; } ;
typedef  TYPE_2__ L3TABLE ;
typedef  TYPE_3__ L3SW ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_2__*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (int) ; 

bool FUNC8(L3SW *s, L3TABLE *tbl)
{
	bool ret = false;
	// Validate arguments
	if (s == NULL || tbl == NULL)
	{
		return false;
	}

	if (tbl->Metric == 0 || tbl->GatewayAddress == 0 || tbl->GatewayAddress == 0xffffffff)
	{
		return false;
	}

	FUNC4(s->lock);
	{
		if (FUNC3(s->TableList) >= FUNC1(s->Cedar->Server, "i_max_l3_table"))
		{
			// Too many
		}
		else
		{
			// Create
			if (s->Active == false)
			{
				if (FUNC5(s->TableList, tbl) == NULL)
				{
					L3TABLE *t = FUNC7(sizeof(L3TABLE));

					FUNC0(t, tbl, sizeof(L3TABLE));

					FUNC2(s->TableList, t);

					ret = true;
				}
			}
		}
	}
	FUNC6(s->lock);

	return ret;
}