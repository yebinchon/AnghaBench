#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ deptype; int /*<<< orphan*/  refobjsubid; int /*<<< orphan*/  refobjid; int /*<<< orphan*/  refclassid; } ;
struct TYPE_6__ {int /*<<< orphan*/  objectId; int /*<<< orphan*/  classId; } ;
typedef  int /*<<< orphan*/ * SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  TYPE_1__ ObjectAddress ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_2__* Form_pg_depend ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_depend_classid ; 
 int /*<<< orphan*/  Anum_pg_depend_objid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 scalar_t__ DEPENDENCY_EXTENSION ; 
 int /*<<< orphan*/  DependDependerIndexId ; 
 int /*<<< orphan*/  DependRelationId ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 

bool
FUNC10(const ObjectAddress *target,
								ObjectAddress *extensionAddress)
{
	Relation depRel = NULL;
	ScanKeyData key[2];
	SysScanDesc depScan = NULL;
	HeapTuple depTup = NULL;
	bool result = false;

	depRel = FUNC6(DependRelationId, AccessShareLock);

	/* scan pg_depend for classid = $1 AND objid = $2 using pg_depend_depender_index */
	FUNC4(&key[0], Anum_pg_depend_classid, BTEqualStrategyNumber, F_OIDEQ,
				FUNC3(target->classId));
	FUNC4(&key[1], Anum_pg_depend_objid, BTEqualStrategyNumber, F_OIDEQ,
				FUNC3(target->objectId));
	depScan = FUNC7(depRel, DependDependerIndexId, true, NULL, 2, key);

	while (FUNC1(depTup = FUNC9(depScan)))
	{
		Form_pg_depend pg_depend = (Form_pg_depend) FUNC0(depTup);
		if (pg_depend->deptype == DEPENDENCY_EXTENSION)
		{
			result = true;
			if (extensionAddress != NULL)
			{
				FUNC2(*extensionAddress, pg_depend->refclassid,
									pg_depend->refobjid, pg_depend->refobjsubid);
			}
			break;
		}
	}

	FUNC8(depScan);
	FUNC5(depRel, AccessShareLock);

	return result;
}