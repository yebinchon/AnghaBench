#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64 ;
struct TYPE_7__ {int kind; scalar_t__ options; int /*<<< orphan*/  name; TYPE_1__* relation; scalar_t__ concurrent; } ;
struct TYPE_6__ {char* relname; int /*<<< orphan*/  schemaname; } ;
typedef  int /*<<< orphan*/  StringInfo ;
typedef  TYPE_2__ ReindexStmt ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,int /*<<< orphan*/ ) ; 
 scalar_t__ REINDEXOPT_VERBOSE ; 
#define  REINDEX_OBJECT_DATABASE 132 
#define  REINDEX_OBJECT_INDEX 131 
#define  REINDEX_OBJECT_SCHEMA 130 
#define  REINDEX_OBJECT_SYSTEM 129 
#define  REINDEX_OBJECT_TABLE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

void
FUNC6(ReindexStmt *origStmt, Oid distrelid, int64 shardid,
								StringInfo buffer)
{
	ReindexStmt *reindexStmt = FUNC3(origStmt); /* copy to avoid modifications */
	char *relationName = NULL;
#if PG_VERSION_NUM >= 120000
	const char *concurrentlyString = reindexStmt->concurrent ? "CONCURRENTLY " : "";
#else
	const char *concurrentlyString = "";
#endif


	if (reindexStmt->kind == REINDEX_OBJECT_INDEX ||
		reindexStmt->kind == REINDEX_OBJECT_TABLE)
	{
		relationName = reindexStmt->relation->relname;

		/* extend relation and index name using shard identifier */
		FUNC0(&relationName, shardid);
	}

	FUNC2(buffer, "REINDEX ");

	if (reindexStmt->options == REINDEXOPT_VERBOSE)
	{
		FUNC2(buffer, "(VERBOSE) ");
	}

	switch (reindexStmt->kind)
	{
		case REINDEX_OBJECT_INDEX:
		{
			FUNC1(buffer, "INDEX %s%s", concurrentlyString,
							 FUNC5(reindexStmt->relation->schemaname,
														relationName));
			break;
		}

		case REINDEX_OBJECT_TABLE:
		{
			FUNC1(buffer, "TABLE %s%s", concurrentlyString,
							 FUNC5(reindexStmt->relation->schemaname,
														relationName));
			break;
		}

		case REINDEX_OBJECT_SCHEMA:
		{
			FUNC1(buffer, "SCHEMA %s%s", concurrentlyString,
							 FUNC4(reindexStmt->name));
			break;
		}

		case REINDEX_OBJECT_SYSTEM:
		{
			FUNC1(buffer, "SYSTEM %s%s", concurrentlyString,
							 FUNC4(reindexStmt->name));
			break;
		}

		case REINDEX_OBJECT_DATABASE:
		{
			FUNC1(buffer, "DATABASE %s%s", concurrentlyString,
							 FUNC4(reindexStmt->name));
			break;
		}
	}
}