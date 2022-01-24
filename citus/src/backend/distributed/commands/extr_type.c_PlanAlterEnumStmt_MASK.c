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
typedef  int /*<<< orphan*/  ObjectAddress ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  AlterEnumStmt ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_WORKERS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DISABLE_DDL_PROPAGATION ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ENABLE_DDL_PROPAGATION ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

List *
FUNC9(AlterEnumStmt *stmt, const char *queryString)
{
	const char *alterEnumStmtSql = NULL;
	const ObjectAddress *typeAddress = NULL;
	List *commands = NIL;

	typeAddress = FUNC4((Node *) stmt, false);
	if (!FUNC7(typeAddress))
	{
		return NIL;
	}

	/*
	 * alter enum will run for all distributed enums, regardless if in a transaction or
	 * not since the enum will be different on the coordinator and workers if we didn't.
	 * (adding values to an enum can not run in a transaction anyway and would error by
	 * postgres already).
	 */
	FUNC3();

	/*
	 * managing types can only be done on the coordinator if ddl propagation is on. when
	 * it is off we will never get here
	 */
	FUNC2();

	FUNC6((Node *) stmt);
	alterEnumStmtSql = FUNC1((Node *) stmt);

	/*
	 * Before pg12 ALTER ENUM ... ADD VALUE could not be within a xact block. Instead of
	 * creating a DDLTaksList we won't return anything here. During the processing phase
	 * we directly connect to workers and execute the commands remotely.
	 */
#if PG_VERSION_NUM < 120000
	if (FUNC0(stmt))
	{
		/*
		 * a plan cannot be made as it will be committed via 2PC when ran through the
		 * executor, instead we directly distributed during processing phase
		 */
		return NIL;
	}
#endif

	commands = FUNC8(DISABLE_DDL_PROPAGATION,
						  (void *) alterEnumStmtSql,
						  ENABLE_DDL_PROPAGATION);

	return FUNC5(ALL_WORKERS, commands);
}