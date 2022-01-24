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
struct TYPE_3__ {int /*<<< orphan*/  relid; } ;
typedef  TYPE_1__ RangeTblEntry ;
typedef  int /*<<< orphan*/  Query ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

bool
FUNC3(Query *query)
{
	bool insertSelectQuery = FUNC0(query);

	if (insertSelectQuery)
	{
		RangeTblEntry *insertRte = FUNC1(query);
		if (!FUNC2(insertRte->relid))
		{
			return true;
		}
	}

	return false;
}