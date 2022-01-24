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
struct TYPE_2__ {scalar_t__ inhrelid; } ;
typedef  int /*<<< orphan*/ * SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_1__* Form_pg_inherits ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_inherits_inhrelid ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  InheritsRelationId ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 

bool
FUNC9(Oid relationId)
{
	Relation pgInherits = NULL;
	SysScanDesc scan = NULL;
	ScanKeyData key[1];
	HeapTuple inheritsTuple = NULL;
	bool tableInherits = false;

	pgInherits = FUNC5(InheritsRelationId, AccessShareLock);

	FUNC3(&key[0], Anum_pg_inherits_inhrelid,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC1(relationId));

	scan = FUNC6(pgInherits, InvalidOid, false,
							  NULL, 1, key);

	while ((inheritsTuple = FUNC8(scan)) != NULL)
	{
		Oid inheritedRelationId =
			((Form_pg_inherits) FUNC0(inheritsTuple))->inhrelid;

		if (relationId == inheritedRelationId)
		{
			tableInherits = true;
			break;
		}
	}

	FUNC7(scan);
	FUNC4(pgInherits, AccessShareLock);

	if (tableInherits && FUNC2(relationId))
	{
		tableInherits = false;
	}

	return tableInherits;
}