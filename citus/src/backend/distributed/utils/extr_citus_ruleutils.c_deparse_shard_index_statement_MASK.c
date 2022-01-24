#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64 ;
struct TYPE_9__ {char* idxname; scalar_t__ indexParams; scalar_t__ indexIncludingParams; int /*<<< orphan*/ * whereClause; int /*<<< orphan*/  options; int /*<<< orphan*/  accessMethod; TYPE_1__* relation; scalar_t__ if_not_exists; scalar_t__ concurrent; scalar_t__ unique; } ;
struct TYPE_8__ {char* relname; int /*<<< orphan*/  schemaname; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_2__ IndexStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ NIL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 

void
FUNC12(IndexStmt *origStmt, Oid distrelid, int64 shardid,
							  StringInfo buffer)
{
	IndexStmt *indexStmt = FUNC5(origStmt); /* copy to avoid modifications */
	char *relationName = indexStmt->relation->relname;
	char *indexName = indexStmt->idxname;
	List *deparseContext = NULL;

	/* extend relation and index name using shard identifier */
	FUNC0(&relationName, shardid);
	FUNC0(&indexName, shardid);

	/* use extended shard name and transformed stmt for deparsing */
	deparseContext = FUNC6(relationName, distrelid);
	indexStmt = FUNC11(distrelid, indexStmt, NULL);

	FUNC2(buffer, "CREATE %s INDEX %s %s %s ON %s USING %s ",
					 (indexStmt->unique ? "UNIQUE" : ""),
					 (indexStmt->concurrent ? "CONCURRENTLY" : ""),
					 (indexStmt->if_not_exists ? "IF NOT EXISTS" : ""),
					 FUNC9(indexName),
					 FUNC10(indexStmt->relation->schemaname,
												relationName),
					 indexStmt->accessMethod);

	/* index column or expression list begins here */
	FUNC3(buffer, '(');
	FUNC8(buffer, indexStmt->indexParams, deparseContext);
	FUNC4(buffer, ") ");

	/* column/expressions for INCLUDE list */
	if (indexStmt->indexIncludingParams != NIL)
	{
		FUNC4(buffer, "INCLUDE (");
		FUNC8(buffer, indexStmt->indexIncludingParams, deparseContext);
		FUNC3(buffer, ')');
	}

	FUNC1(buffer, indexStmt->options);

	if (indexStmt->whereClause != NULL)
	{
		FUNC2(buffer, "WHERE %s", FUNC7(indexStmt->whereClause,
																deparseContext, false,
																false));
	}
}