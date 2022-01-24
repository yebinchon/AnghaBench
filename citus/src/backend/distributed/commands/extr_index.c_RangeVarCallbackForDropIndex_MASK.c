#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct DropRelationCallbackState {char relkind; scalar_t__ heapOid; scalar_t__ concurrent; } ;
struct TYPE_6__ {char relkind; int /*<<< orphan*/  relnamespace; } ;
struct TYPE_5__ {int /*<<< orphan*/  relname; } ;
typedef  TYPE_1__ RangeVar ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_2__* Form_pg_class ;

/* Variables and functions */
 int /*<<< orphan*/  ACLCHECK_NOT_OWNER ; 
 int /*<<< orphan*/  AccessExclusiveLock ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERRCODE_WRONG_OBJECT_TYPE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 scalar_t__ InvalidOid ; 
 scalar_t__ FUNC5 (scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OBJECT_INDEX ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 char RELKIND_INDEX ; 
 char RELKIND_PARTITIONED_INDEX ; 
 int /*<<< orphan*/  RELOID ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ShareUpdateExclusiveLock ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  allowSystemTableMods ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC18(const RangeVar *rel, Oid relOid, Oid oldRelOid, void *arg)
{
	/* *INDENT-OFF* */
	HeapTuple	tuple;
	struct DropRelationCallbackState *state;
	char		relkind;
	char		expected_relkind;
	Form_pg_class classform;
	LOCKMODE	heap_lockmode;

	state = (struct DropRelationCallbackState *) arg;
	relkind = state->relkind;
	heap_lockmode = state->concurrent ?
	                ShareUpdateExclusiveLock : AccessExclusiveLock;

	FUNC0(relkind == RELKIND_INDEX);

	/*
	 * If we previously locked some other index's heap, and the name we're
	 * looking up no longer refers to that relation, release the now-useless
	 * lock.
	 */
	if (relOid != oldRelOid && FUNC8(state->heapOid))
	{
		FUNC11(state->heapOid, heap_lockmode);
		state->heapOid = InvalidOid;
	}

	/* Didn't find a relation, so no need for locking or permission checks. */
	if (!FUNC8(relOid))
		return;

	tuple = FUNC10(RELOID, FUNC7(relOid));
	if (!FUNC3(tuple))
		return;					/* concurrently dropped, so nothing to do */
	classform = (Form_pg_class) FUNC1(tuple);

	/*
	 * PG 11 sends relkind as partitioned index for an index
	 * on partitioned table. It is handled the same
	 * as regular index as far as we are concerned here.
	 *
	 * See tablecmds.c:RangeVarCallbackForDropRelation()
	 */
	expected_relkind = classform->relkind;

	if (expected_relkind == RELKIND_PARTITIONED_INDEX)
		expected_relkind = RELKIND_INDEX;

	if (expected_relkind != relkind)
		FUNC13(ERROR, (FUNC14(ERRCODE_WRONG_OBJECT_TYPE),
				FUNC15("\"%s\" is not an index", rel->relname)));

	/* Allow DROP to either table owner or schema owner */
	if (!FUNC16(relOid, FUNC2()) &&
	    !FUNC17(classform->relnamespace, FUNC2()))
	{
		FUNC12(ACLCHECK_NOT_OWNER, OBJECT_INDEX, rel->relname);
	}

	if (!allowSystemTableMods && FUNC5(relOid, classform))
		FUNC13(ERROR,
		        (FUNC14(ERRCODE_INSUFFICIENT_PRIVILEGE),
				        FUNC15("permission denied: \"%s\" is a system catalog",
				               rel->relname)));

	FUNC9(tuple);

	/*
	 * In DROP INDEX, attempt to acquire lock on the parent table before
	 * locking the index.  index_drop() will need this anyway, and since
	 * regular queries lock tables before their indexes, we risk deadlock if
	 * we do it the other way around.  No error if we don't find a pg_index
	 * entry, though --- the relation may have been dropped.
	 */
	if (relkind == RELKIND_INDEX && relOid != oldRelOid)
	{
		state->heapOid = FUNC4(relOid, true);
		if (FUNC8(state->heapOid))
			FUNC6(state->heapOid, heap_lockmode);
	}
	/* *INDENT-ON* */
}