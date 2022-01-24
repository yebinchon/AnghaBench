#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ varattno; int /*<<< orphan*/  varno; } ;
typedef  TYPE_1__ Var ;
struct TYPE_15__ {int /*<<< orphan*/  equivalentAttributes; } ;
struct TYPE_14__ {scalar_t__ varattno; int /*<<< orphan*/  relationId; int /*<<< orphan*/  rteIdentity; int /*<<< orphan*/  varno; } ;
struct TYPE_13__ {scalar_t__ rtekind; int /*<<< orphan*/  relid; } ;
typedef  TYPE_2__ RangeTblEntry ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_3__ AttributeEquivalenceClassMember ;
typedef  TYPE_4__ AttributeEquivalenceClass ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ RTE_RELATION ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 TYPE_3__* FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(AttributeEquivalenceClass **
										  attrEquivalenceClass,
										  RangeTblEntry *rangeTableEntry,
										  Var *varToBeAdded)
{
	AttributeEquivalenceClassMember *attributeEqMember = NULL;
	Oid relationId = rangeTableEntry->relid;
	Var *relationPartitionKey = NULL;

	/* we don't consider local tables in the equality on columns */
	if (!FUNC3(relationId))
	{
		return;
	}

	relationPartitionKey = FUNC1(relationId);

	FUNC0(rangeTableEntry->rtekind == RTE_RELATION);

	/* we don't need reference tables in the equality on columns */
	if (relationPartitionKey == NULL)
	{
		return;
	}

	/* we're only interested in distribution columns */
	if (relationPartitionKey->varattno != varToBeAdded->varattno)
	{
		return;
	}

	attributeEqMember = FUNC5(sizeof(AttributeEquivalenceClassMember));

	attributeEqMember->varattno = varToBeAdded->varattno;
	attributeEqMember->varno = varToBeAdded->varno;
	attributeEqMember->rteIdentity = FUNC2(rangeTableEntry);
	attributeEqMember->relationId = rangeTableEntry->relid;

	(*attrEquivalenceClass)->equivalentAttributes =
		FUNC4((*attrEquivalenceClass)->equivalentAttributes,
				attributeEqMember);
}