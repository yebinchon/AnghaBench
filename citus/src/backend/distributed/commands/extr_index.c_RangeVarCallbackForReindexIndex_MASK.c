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
struct ReindexIndexCallbackState {scalar_t__ locked_table_oid; scalar_t__ concurrent; } ;
struct TYPE_3__ {int /*<<< orphan*/  relname; } ;
typedef  TYPE_1__ RangeVar ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  LOCKMODE ;

/* Variables and functions */
 int /*<<< orphan*/  ACLCHECK_NOT_OWNER ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OBJECT_INDEX ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 char RELKIND_INDEX ; 
 char RELKIND_PARTITIONED_INDEX ; 
 int /*<<< orphan*/  ShareLock ; 
 int /*<<< orphan*/  ShareUpdateExclusiveLock ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 char FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(const RangeVar *relation, Oid relId, Oid oldRelId,
								void *arg)
{
	/* *INDENT-OFF* */
	char		relkind;
	struct ReindexIndexCallbackState *state = arg;
	LOCKMODE	table_lockmode;

	/*
	 * Lock level here should match table lock in reindex_index() for
	 * non-concurrent case and table locks used by index_concurrently_*() for
	 * concurrent case.
	 */
#if PG_VERSION_NUM >= 120000
	table_lockmode = state->concurrent ? ShareUpdateExclusiveLock : ShareLock;
#else
	table_lockmode = ShareLock;
#endif

	/*
	 * If we previously locked some other index's heap, and the name we're
	 * looking up no longer refers to that relation, release the now-useless
	 * lock.
	 */
	if (relId != oldRelId && FUNC3(oldRelId))
	{
		FUNC4(state->locked_table_oid, table_lockmode);
		state->locked_table_oid = InvalidOid;
	}

	/* If the relation does not exist, there's nothing more to do. */
	if (!FUNC3(relId))
		return;

	/*
	 * If the relation does exist, check whether it's an index.  But note that
	 * the relation might have been dropped between the time we did the name
	 * lookup and now.  In that case, there's nothing to do.
	 */
	relkind = FUNC9(relId);
	if (!relkind)
		return;
	if (relkind != RELKIND_INDEX && relkind != RELKIND_PARTITIONED_INDEX)
		FUNC6(ERROR,
				(FUNC7(ERRCODE_WRONG_OBJECT_TYPE),
				 FUNC8("\"%s\" is not an index", relation->relname)));

	/* Check permissions */
	if (!FUNC10(relId, FUNC0()))
		FUNC5(ACLCHECK_NOT_OWNER, OBJECT_INDEX, relation->relname);

	/* Lock heap before index to avoid deadlock. */
	if (relId != oldRelId)
	{
		Oid			table_oid = FUNC1(relId, true);

		/*
		 * If the OID isn't valid, it means the index was concurrently
		 * dropped, which is not a problem for us; just return normally.
		 */
		if (FUNC3(table_oid))
		{
			FUNC2(table_oid, table_lockmode);
			state->locked_table_oid = table_oid;
		}
	}
	/* *INDENT-ON* */
}