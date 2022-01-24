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
typedef  int /*<<< orphan*/  TableScanDesc ;
struct TYPE_2__ {int /*<<< orphan*/  rolname; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  int /*<<< orphan*/  HeapScanDesc ;
typedef  TYPE_1__* Form_pg_authid ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/  AuthIdRelationId ; 
 int /*<<< orphan*/  ForwardScanDirection ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/ * NIL ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

List *
FUNC12()
{
	Relation pgAuthId = FUNC9(AuthIdRelationId, AccessShareLock);
	TupleDesc pgAuthIdDescription = FUNC4(pgAuthId);
	HeapTuple tuple = NULL;
	List *commands = NIL;
	const char *alterRoleQuery = NULL;

#if PG_VERSION_NUM >= 120000
	TableScanDesc scan = table_beginscan_catalog(pgAuthId, 0, NULL);
#else
	HeapScanDesc scan = FUNC5(pgAuthId, 0, NULL);
#endif

	while ((tuple = FUNC8(scan, ForwardScanDirection)) != NULL)
	{
		const char *rolename = FUNC3(((Form_pg_authid) FUNC0(tuple))->rolname);

		/*
		 * The default roles are skipped, because reserved roles
		 * cannot be altered.
		 */
		if (FUNC2(rolename))
		{
			continue;
		}
		alterRoleQuery = FUNC1(tuple, pgAuthIdDescription);
		commands = FUNC10(commands, (void *) alterRoleQuery);
	}

	FUNC7(scan);
	FUNC6(pgAuthId, AccessShareLock);

	return commands;
}