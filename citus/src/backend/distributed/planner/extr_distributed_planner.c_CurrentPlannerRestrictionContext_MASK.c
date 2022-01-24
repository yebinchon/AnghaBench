#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  PlannerRestrictionContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ NIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ plannerRestrictionContextList ; 

__attribute__((used)) static PlannerRestrictionContext *
FUNC6(void)
{
	PlannerRestrictionContext *plannerRestrictionContext = NULL;

	FUNC0(plannerRestrictionContextList != NIL);

	plannerRestrictionContext =
		(PlannerRestrictionContext *) FUNC5(plannerRestrictionContextList);

	if (plannerRestrictionContext == NULL)
	{
		FUNC1(ERROR, (FUNC2(ERRCODE_INTERNAL_ERROR),
						FUNC4("planner restriction context stack was empty"),
						FUNC3("Please report this to the Citus core team.")));
	}

	return plannerRestrictionContext;
}