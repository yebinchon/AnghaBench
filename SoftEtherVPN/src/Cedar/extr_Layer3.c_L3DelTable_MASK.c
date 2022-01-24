#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int Active; int /*<<< orphan*/  lock; int /*<<< orphan*/  TableList; } ;
typedef  int /*<<< orphan*/  L3TABLE ;
typedef  TYPE_1__ L3SW ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

bool FUNC5(L3SW *s, L3TABLE *tbl)
{
	bool ret = false;
	// Validate arguments
	if (s == NULL || tbl == NULL)
	{
		return false;
	}

	FUNC2(s->lock);
	{
		if (s->Active == false)
		{
			L3TABLE *t = FUNC3(s->TableList, tbl);

			if (t != NULL)
			{
				FUNC0(s->TableList, t);
				FUNC1(t);

				ret = true;
			}
		}
	}
	FUNC4(s->lock);

	return ret;
}