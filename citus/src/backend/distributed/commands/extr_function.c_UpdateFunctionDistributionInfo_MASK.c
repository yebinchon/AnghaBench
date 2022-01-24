#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  replace ;
typedef  int /*<<< orphan*/ * TupleDesc ;
struct TYPE_10__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_9__ {int /*<<< orphan*/  objectSubId; int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
typedef  int /*<<< orphan*/ * SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  TYPE_1__ ObjectAddress ;
typedef  TYPE_2__* HeapTuple ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  Anum_pg_dist_object_classid ; 
 int Anum_pg_dist_object_colocationid ; 
 int Anum_pg_dist_object_distribution_argument_index ; 
 int /*<<< orphan*/  Anum_pg_dist_object_objid ; 
 int /*<<< orphan*/  Anum_pg_dist_object_objsubid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int Natts_pg_dist_object ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC13 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int const,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC19(const ObjectAddress *distAddress,
							   int *distribution_argument_index,
							   int *colocationId)
{
	const bool indexOK = true;

	Relation pgDistObjectRel = NULL;
	TupleDesc tupleDescriptor = NULL;
	ScanKeyData scanKey[3];
	SysScanDesc scanDescriptor = NULL;
	HeapTuple heapTuple = NULL;
	Datum values[Natts_pg_dist_object];
	bool isnull[Natts_pg_dist_object];
	bool replace[Natts_pg_dist_object];

	pgDistObjectRel = FUNC14(FUNC4(), RowExclusiveLock);
	tupleDescriptor = FUNC8(pgDistObjectRel);

	/* scan pg_dist_object for classid = $1 AND objid = $2 AND objsubid = $3 via index */
	FUNC9(&scanKey[0], Anum_pg_dist_object_classid, BTEqualStrategyNumber, F_OIDEQ,
				FUNC7(distAddress->classId));
	FUNC9(&scanKey[1], Anum_pg_dist_object_objid, BTEqualStrategyNumber, F_OIDEQ,
				FUNC7(distAddress->objectId));
	FUNC9(&scanKey[2], Anum_pg_dist_object_objsubid, BTEqualStrategyNumber,
				F_INT4EQ, FUNC7(distAddress->objectSubId));

	scanDescriptor = FUNC16(pgDistObjectRel, FUNC3(),
										indexOK,
										NULL, 3, scanKey);

	heapTuple = FUNC18(scanDescriptor);
	if (!FUNC5(heapTuple))
	{
		FUNC10(ERROR, (FUNC11("could not find valid entry for node \"%d,%d,%d\" "
							   "in pg_dist_object", distAddress->classId,
							   distAddress->objectId, distAddress->objectSubId)));
	}

	FUNC15(replace, 0, sizeof(replace));

	replace[Anum_pg_dist_object_distribution_argument_index - 1] = true;

	if (distribution_argument_index != NULL)
	{
		values[Anum_pg_dist_object_distribution_argument_index - 1] = FUNC6(
			*distribution_argument_index);
		isnull[Anum_pg_dist_object_distribution_argument_index - 1] = false;
	}
	else
	{
		isnull[Anum_pg_dist_object_distribution_argument_index - 1] = true;
	}

	replace[Anum_pg_dist_object_colocationid - 1] = true;
	if (colocationId != NULL)
	{
		values[Anum_pg_dist_object_colocationid - 1] = FUNC6(*colocationId);
		isnull[Anum_pg_dist_object_colocationid - 1] = false;
	}
	else
	{
		isnull[Anum_pg_dist_object_colocationid - 1] = true;
	}

	heapTuple = FUNC13(heapTuple, tupleDescriptor, values, isnull, replace);

	FUNC0(pgDistObjectRel, &heapTuple->t_self, heapTuple);

	FUNC1(FUNC4());

	FUNC2();

	FUNC17(scanDescriptor);

	FUNC12(pgDistObjectRel, NoLock);
}