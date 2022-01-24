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
struct TYPE_3__ {int /*<<< orphan*/ * joinRestrictionContext; int /*<<< orphan*/ * relationRestrictionContext; } ;
typedef  int /*<<< orphan*/  RelationRestrictionContext ;
typedef  TYPE_1__ PlannerRestrictionContext ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  JoinRestrictionContext ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * NIL ; 
 int attributeEquivalenceId ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

List *
FUNC3(PlannerRestrictionContext *plannerRestrictionContext)
{
	RelationRestrictionContext *relationRestrictionContext =
		plannerRestrictionContext->relationRestrictionContext;
	JoinRestrictionContext *joinRestrictionContext =
		plannerRestrictionContext->joinRestrictionContext;

	List *relationRestrictionAttributeEquivalenceList = NIL;
	List *joinRestrictionAttributeEquivalenceList = NIL;
	List *allAttributeEquivalenceList = NIL;

	/* reset the equivalence id counter per call to prevent overflows */
	attributeEquivalenceId = 1;

	relationRestrictionAttributeEquivalenceList =
		FUNC1(relationRestrictionContext);
	joinRestrictionAttributeEquivalenceList =
		FUNC0(joinRestrictionContext);

	allAttributeEquivalenceList = FUNC2(relationRestrictionAttributeEquivalenceList,
											  joinRestrictionAttributeEquivalenceList);

	return allAttributeEquivalenceList;
}