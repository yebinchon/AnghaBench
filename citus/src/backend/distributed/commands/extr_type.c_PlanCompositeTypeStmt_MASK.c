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
typedef  int /*<<< orphan*/  CompositeTypeStmt ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_WORKERS ; 
 int /*<<< orphan*/  DISABLE_DDL_PROPAGATION ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  ENABLE_DDL_PROPAGATION ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * NIL ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RowShareLock ; 
 int /*<<< orphan*/  FUNC7 () ; 
 char* FUNC8 (char const*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

List *
FUNC10(CompositeTypeStmt *stmt, const char *queryString)
{
	const char *compositeTypeStmtSql = NULL;
	List *commands = NIL;

	if (!FUNC7())
	{
		return NIL;
	}

	/*
	 * managing types can only be done on the coordinator if ddl propagation is on. when
	 * it is off we will never get here
	 */
	FUNC2();

	/*
	 * Make sure that no new nodes are added after this point until the end of the
	 * transaction by taking a RowShareLock on pg_dist_node, which conflicts with the
	 * ExclusiveLock taken by master_add_node.
	 * This guarantees that all active nodes will have the object, because they will
	 * either get it now, or get it in master_add_node after this transaction finishes and
	 * the pg_dist_object record becomes visible.
	 */
	FUNC4(FUNC1(), RowShareLock);

	/* fully qualify before lookup and later deparsing */
	FUNC6((Node *) stmt);

	/*
	 * reconstruct creation statement in a portable fashion. The create_or_replace helper
	 * function will be used to create the type in an idempotent manner on the workers.
	 *
	 * Types could exist on the worker prior to being created on the coordinator when the
	 * type previously has been attempted to be created in a transaction which did not
	 * commit on the coordinator.
	 */
	compositeTypeStmtSql = FUNC0(stmt);
	compositeTypeStmtSql = FUNC8(compositeTypeStmtSql);

	/*
	 * when we allow propagation within a transaction block we should make sure to only
	 * allow this in sequential mode
	 */
	FUNC3();

	commands = FUNC9(DISABLE_DDL_PROPAGATION,
						  (void *) compositeTypeStmtSql,
						  ENABLE_DDL_PROPAGATION);

	return FUNC5(ALL_WORKERS, commands);
}