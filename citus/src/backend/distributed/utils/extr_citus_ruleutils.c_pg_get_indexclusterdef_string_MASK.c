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
struct TYPE_6__ {scalar_t__ indisclustered; int /*<<< orphan*/  indrelid; } ;
struct TYPE_5__ {char* data; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_1__ StringInfoData ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_2__* Form_pg_index ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INDEXRELID ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  NIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

char *
FUNC12(Oid indexRelationId)
{
	HeapTuple indexTuple = NULL;
	Form_pg_index indexForm = NULL;
	Oid tableRelationId = InvalidOid;
	StringInfoData buffer = { NULL, 0, 0, 0 };

	indexTuple = FUNC4(INDEXRELID, FUNC2(indexRelationId), 0, 0, 0);
	if (!FUNC1(indexTuple))
	{
		FUNC6(ERROR, (FUNC7("cache lookup failed for index %u", indexRelationId)));
	}

	indexForm = (Form_pg_index) FUNC0(indexTuple);
	tableRelationId = indexForm->indrelid;

	/* check if the table is clustered on this index */
	if (indexForm->indisclustered)
	{
		char *tableName = FUNC8(tableRelationId, NIL);
		char *indexName = FUNC9(indexRelationId); /* needs to be quoted */

		FUNC10(&buffer);
		FUNC5(&buffer, "ALTER TABLE %s CLUSTER ON %s",
						 tableName, FUNC11(indexName));
	}

	FUNC3(indexTuple);

	return (buffer.data);
}