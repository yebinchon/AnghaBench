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
typedef  int /*<<< orphan*/  Var ;
struct TYPE_3__ {scalar_t__ inhRelations; int /*<<< orphan*/ * relation; int /*<<< orphan*/ * partbound; } ;
typedef  int /*<<< orphan*/  RangeVar ;
typedef  scalar_t__ Oid ;
typedef  TYPE_1__ CreateStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,char,char*,int) ; 
 char DISTRIBUTE_BY_HASH ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__) ; 
 scalar_t__ InvalidOid ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ NIL ; 
 int /*<<< orphan*/  NoLock ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 char* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__) ; 

void
FUNC8(CreateStmt *createStatement)
{
	if (createStatement->inhRelations != NIL && createStatement->partbound != NULL)
	{
		RangeVar *parentRelation = FUNC6(createStatement->inhRelations);
		bool parentMissingOk = false;
		Oid parentRelationId = FUNC4(parentRelation, NoLock,
												parentMissingOk);

		/* a partition can only inherit from single parent table */
		FUNC0(FUNC7(createStatement->inhRelations) == 1);

		FUNC0(parentRelationId != InvalidOid);

		/*
		 * If a partition is being created and if its parent is a distributed
		 * table, we will distribute this table as well.
		 */
		if (FUNC3(parentRelationId))
		{
			bool missingOk = false;
			Oid relationId = FUNC4(createStatement->relation, NoLock,
											  missingOk);
			Var *parentDistributionColumn = FUNC2(parentRelationId);
			char parentDistributionMethod = DISTRIBUTE_BY_HASH;
			char *parentRelationName = FUNC5(parentRelationId);
			bool viaDeprecatedAPI = false;

			FUNC1(relationId, parentDistributionColumn,
								   parentDistributionMethod, parentRelationName,
								   viaDeprecatedAPI);
		}
	}
}