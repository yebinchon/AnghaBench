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
struct TYPE_2__ {int /*<<< orphan*/  objsubid; int /*<<< orphan*/  objid; int /*<<< orphan*/  classid; } ;
typedef  int /*<<< orphan*/ * SysScanDesc ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_1__* Form_pg_dist_object ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 

List *
FUNC11(void)
{
	Relation pgDistObjectRel = NULL;
	SysScanDesc pgDistObjectScan = NULL;
	HeapTuple pgDistObjectTup = NULL;
	List *objectAddressList = NIL;

	pgDistObjectRel = FUNC4(FUNC0(), AccessShareLock);
	pgDistObjectScan = FUNC8(pgDistObjectRel, InvalidOid, false, NULL, 0,
										  NULL);
	while (FUNC2(pgDistObjectTup = FUNC10(pgDistObjectScan)))
	{
		Form_pg_dist_object pg_dist_object =
			(Form_pg_dist_object) FUNC1(pgDistObjectTup);
		ObjectAddress *objectAddress = FUNC6(sizeof(ObjectAddress));
		FUNC3(*objectAddress,
							pg_dist_object->classid,
							pg_dist_object->objid,
							pg_dist_object->objsubid);
		objectAddressList = FUNC5(objectAddressList, objectAddress);
	}

	FUNC9(pgDistObjectScan);
	FUNC7(pgDistObjectRel, AccessShareLock);

	return objectAddressList;
}