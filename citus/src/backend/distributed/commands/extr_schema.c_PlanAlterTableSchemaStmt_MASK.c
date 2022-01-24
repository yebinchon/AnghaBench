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
struct TYPE_3__ {int /*<<< orphan*/  missing_ok; int /*<<< orphan*/ * relation; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__ AlterObjectSchemaStmt ;

/* Variables and functions */
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WARNING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

List *
FUNC6(AlterObjectSchemaStmt *stmt, const char *queryString)
{
	Oid relationId = InvalidOid;

	if (stmt->relation == NULL)
	{
		return NIL;
	}

	relationId = FUNC2(stmt->relation,
								  AccessExclusiveLock,
								  stmt->missing_ok);

	/* first check whether a distributed relation is affected */
	if (!FUNC1(relationId) || !FUNC0(relationId))
	{
		return NIL;
	}

	/* emit a warning if a distributed relation is affected */
	FUNC3(WARNING, (FUNC5("not propagating ALTER ... SET SCHEMA commands to "
							 "worker nodes"),
					  FUNC4("Connect to worker nodes directly to manually "
							  "change schemas of affected objects.")));

	return NIL;
}