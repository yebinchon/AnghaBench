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
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  CreateEnumStmt ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_WORKERS ; 
 int /*<<< orphan*/  DISABLE_DDL_PROPAGATION ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ENABLE_DDL_PROPAGATION ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char* FUNC6 (char const*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

List *
FUNC8(CreateEnumStmt *stmt, const char *queryString)
{
	const char *createEnumStmtSql = NULL;
	List *commands = NIL;

	if (!FUNC5())
	{
		return NIL;
	}

	/*
	 * managing types can only be done on the coordinator if ddl propagation is on. when
	 * it is off we will never get here
	 */
	FUNC1();

	/* enforce fully qualified typeName for correct deparsing and lookup */
	FUNC4((Node *) stmt);

	/* reconstruct creation statement in a portable fashion */
	createEnumStmtSql = FUNC0(stmt);
	createEnumStmtSql = FUNC6(createEnumStmtSql);

	/*
	 * when we allow propagation within a transaction block we should make sure to only
	 * allow this in sequential mode
	 */
	FUNC2();

	/* to prevent recursion with mx we disable ddl propagation */
	commands = FUNC7(DISABLE_DDL_PROPAGATION,
						  (void *) createEnumStmtSql,
						  ENABLE_DDL_PROPAGATION);

	return FUNC3(ALL_WORKERS, commands);
}