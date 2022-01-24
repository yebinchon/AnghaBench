#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/ * SysScanDesc ;
typedef  int /*<<< orphan*/  ScanKeyData ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  Anum_pg_inherits_inhparent ; 
 int /*<<< orphan*/  BTEqualStrategyNumber ; 
 int /*<<< orphan*/  F_OIDEQ ; 
 int /*<<< orphan*/  InheritsParentIndexId ; 
 int /*<<< orphan*/  InheritsRelationId ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 

bool
FUNC8(Oid relationId)
{
	Relation pgInherits = NULL;
	SysScanDesc scan = NULL;
	ScanKeyData key[1];
	bool tableInherited = false;

	pgInherits = FUNC4(InheritsRelationId, AccessShareLock);

	FUNC2(&key[0], Anum_pg_inherits_inhparent,
				BTEqualStrategyNumber, F_OIDEQ,
				FUNC0(relationId));

	scan = FUNC5(pgInherits, InheritsParentIndexId, true,
							  NULL, 1, key);

	if (FUNC7(scan) != NULL)
	{
		tableInherited = true;
	}
	FUNC6(scan);
	FUNC3(pgInherits, AccessShareLock);

	if (tableInherited && FUNC1(relationId))
	{
		tableInherited = false;
	}

	return tableInherited;
}