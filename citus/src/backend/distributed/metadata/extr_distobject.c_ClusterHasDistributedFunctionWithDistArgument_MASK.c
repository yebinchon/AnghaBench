#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_2__ {scalar_t__ classid; } ;
typedef  int /*<<< orphan*/ * SysScanDesc ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_1__* Form_pg_dist_object ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_dist_object_distribution_argument_index ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidOid ; 
 scalar_t__ ProcedureRelationId ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 

bool
FUNC10(void)
{
	bool foundDistributedFunction = false;

	SysScanDesc pgDistObjectScan = NULL;
	HeapTuple pgDistObjectTup = NULL;

	Relation pgDistObjectRel = FUNC5(FUNC0(), AccessShareLock);

	TupleDesc tupleDescriptor = FUNC3(pgDistObjectRel);

	pgDistObjectScan =
		FUNC7(pgDistObjectRel, InvalidOid, false, NULL, 0, NULL);
	while (FUNC2(pgDistObjectTup = FUNC9(pgDistObjectScan)))
	{
		Form_pg_dist_object pg_dist_object =
			(Form_pg_dist_object) FUNC1(pgDistObjectTup);

		if (pg_dist_object->classid == ProcedureRelationId)
		{
			bool distArgumentIsNull = false;
			distArgumentIsNull =
				FUNC4(pgDistObjectTup,
							   Anum_pg_dist_object_distribution_argument_index,
							   tupleDescriptor);

			/* we found one distributed function that has an distribution argument */
			if (!distArgumentIsNull)
			{
				foundDistributedFunction = true;

				break;
			}
		}
	}

	FUNC8(pgDistObjectScan);
	FUNC6(pgDistObjectRel, AccessShareLock);

	return foundDistributedFunction;
}