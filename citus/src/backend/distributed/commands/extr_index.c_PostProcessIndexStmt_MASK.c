#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int indisvalid; } ;
struct TYPE_11__ {int /*<<< orphan*/  t_self; } ;
struct TYPE_10__ {int /*<<< orphan*/  idxname; int /*<<< orphan*/  relation; int /*<<< orphan*/  concurrent; } ;
typedef  int /*<<< orphan*/ * Relation ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ IndexStmt ;
typedef  TYPE_2__* HeapTuple ;
typedef  TYPE_3__* Form_pg_index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  INDEXRELID ; 
 int /*<<< orphan*/  INDEX_DROP_CLEAR_VALID ; 
 int /*<<< orphan*/  IndexRelationId ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  NoLock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ShareUpdateExclusiveLock ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC18(IndexStmt *indexStmt)
{
	Relation relation = NULL;
	Oid indexRelationId = InvalidOid;
	Relation indexRelation = NULL;
	Relation pg_index = NULL;
	HeapTuple indexTuple = NULL;
	Form_pg_index indexForm = NULL;

	/* we are only processing CONCURRENT index statements */
	if (!indexStmt->concurrent)
	{
		return;
	}

	/* this logic only applies to the coordinator */
	if (!FUNC5())
	{
		return;
	}

	/* commit the current transaction and start anew */
	FUNC2();
	FUNC9();

	/* get the affected relation and index */
	relation = FUNC14(indexStmt->relation, ShareUpdateExclusiveLock);
	indexRelationId = FUNC10(indexStmt->idxname,
										FUNC7(relation));
	indexRelation = FUNC16(indexRelationId, RowExclusiveLock);

	/* close relations but retain locks */
	FUNC11(relation, NoLock);
	FUNC15(indexRelation, NoLock);

	/* mark index as invalid, in-place (cannot be rolled back) */
	FUNC17(indexRelationId, INDEX_DROP_CLEAR_VALID);

	/* re-open a transaction command from here on out */
	FUNC2();
	FUNC9();

	/* now, update index's validity in a way that can roll back */
	pg_index = FUNC13(IndexRelationId, RowExclusiveLock);

	indexTuple = FUNC8(INDEXRELID, FUNC6(indexRelationId));
	FUNC0(FUNC4(indexTuple)); /* better be present, we have lock! */

	/* mark as valid, save, and update pg_index indexes */
	indexForm = (Form_pg_index) FUNC3(indexTuple);
	indexForm->indisvalid = true;

	FUNC1(pg_index, &indexTuple->t_self, indexTuple);

	/* clean up; index now marked valid, but ROLLBACK will mark invalid */
	FUNC12(indexTuple);
	FUNC11(pg_index, RowExclusiveLock);
}