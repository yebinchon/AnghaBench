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
struct TYPE_3__ {int /*<<< orphan*/  objectSubId; int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
typedef  int /*<<< orphan*/ * SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  TYPE_1__ ObjectAddress ;
typedef  int /*<<< orphan*/ * HeapTuple ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_dist_object_classid ; 
 int /*<<< orphan*/  Anum_pg_dist_object_objid ; 
 int /*<<< orphan*/  Anum_pg_dist_object_objsubid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  F_INT4EQ ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 

bool
FUNC11(const ObjectAddress *address)
{
	Relation pgDistObjectRel = NULL;
	ScanKeyData key[3];
	SysScanDesc pgDistObjectScan = NULL;
	HeapTuple pgDistObjectTup = NULL;
	bool result = false;

	pgDistObjectRel = FUNC6(FUNC1(), AccessShareLock);

	/* scan pg_dist_object for classid = $1 AND objid = $2 AND objsubid = $3 via index */
	FUNC5(&key[0], Anum_pg_dist_object_classid, BTEqualStrategyNumber, F_OIDEQ,
				FUNC4(address->classId));
	FUNC5(&key[1], Anum_pg_dist_object_objid, BTEqualStrategyNumber, F_OIDEQ,
				FUNC4(address->objectId));
	FUNC5(&key[2], Anum_pg_dist_object_objsubid, BTEqualStrategyNumber, F_INT4EQ,
				FUNC3(address->objectSubId));
	pgDistObjectScan = FUNC8(pgDistObjectRel, FUNC0(),
										  true, NULL, 3, key);

	pgDistObjectTup = FUNC10(pgDistObjectScan);
	if (FUNC2(pgDistObjectTup))
	{
		result = true;
	}

	FUNC9(pgDistObjectScan);
	FUNC7(pgDistObjectRel, AccessShareLock);

	return result;
}