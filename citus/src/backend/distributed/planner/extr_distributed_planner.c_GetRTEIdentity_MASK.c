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
struct TYPE_3__ {scalar_t__ rtekind; int /*<<< orphan*/  values_lists; } ;
typedef  TYPE_1__ RangeTblEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IntList ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ RTE_RELATION ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(RangeTblEntry *rte)
{
	FUNC0(rte->rtekind == RTE_RELATION);
	FUNC0(FUNC1(rte->values_lists, IntList));
	FUNC0(FUNC3(rte->values_lists) == 1);

	return FUNC2(rte->values_lists);
}