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
struct TYPE_3__ {scalar_t__ vartype; } ;
typedef  TYPE_1__ Var ;
typedef  scalar_t__ Oid ;

/* Variables and functions */
 TYPE_1__* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 char* FUNC4 (scalar_t__) ; 

void
FUNC5(Oid sourceRelationId, Oid targetRelationId)
{
	Var *sourceDistributionColumn = NULL;
	Var *targetDistributionColumn = NULL;
	Oid sourceDistributionColumnType = InvalidOid;
	Oid targetDistributionColumnType = InvalidOid;

	/* reference tables have NULL distribution column */
	sourceDistributionColumn = FUNC0(sourceRelationId);
	if (sourceDistributionColumn == NULL)
	{
		sourceDistributionColumnType = InvalidOid;
	}
	else
	{
		sourceDistributionColumnType = sourceDistributionColumn->vartype;
	}

	/* reference tables have NULL distribution column */
	targetDistributionColumn = FUNC0(targetRelationId);
	if (targetDistributionColumn == NULL)
	{
		targetDistributionColumnType = InvalidOid;
	}
	else
	{
		targetDistributionColumnType = targetDistributionColumn->vartype;
	}

	if (sourceDistributionColumnType != targetDistributionColumnType)
	{
		char *sourceRelationName = FUNC4(sourceRelationId);
		char *targetRelationName = FUNC4(targetRelationId);

		FUNC1(ERROR, (FUNC3("cannot colocate tables %s and %s",
							   sourceRelationName, targetRelationName),
						FUNC2("Distribution column types don't match for "
								  "%s and %s.", sourceRelationName,
								  targetRelationName)));
	}
}