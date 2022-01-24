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
struct TYPE_3__ {scalar_t__ aggdistinct; scalar_t__ aggorder; } ;
typedef  TYPE_1__ Aggref ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(Aggref *arrayAggregateExpression)
{
	/* if array_agg has order by, we error out */
	if (arrayAggregateExpression->aggorder)
	{
		FUNC0(ERROR, (FUNC1(ERRCODE_FEATURE_NOT_SUPPORTED),
						FUNC2("array_agg with order by is unsupported")));
	}

	/* if array_agg has distinct, we error out */
	if (arrayAggregateExpression->aggdistinct)
	{
		FUNC0(ERROR, (FUNC1(ERRCODE_FEATURE_NOT_SUPPORTED),
						FUNC2("array_agg (distinct) is unsupported")));
	}
}