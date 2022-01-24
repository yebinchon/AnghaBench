#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  relation; scalar_t__ is_program; int /*<<< orphan*/ * filename; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ CopyStmt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 char DISTRIBUTE_BY_APPEND ; 
 char DISTRIBUTE_BY_HASH ; 
 char DISTRIBUTE_BY_NONE ; 
 char DISTRIBUTE_BY_RANGE ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERRCODE_INSUFFICIENT_PRIVILEGE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  NoLock ; 
 char FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  XACT_MODIFICATION_DATA ; 
 int /*<<< orphan*/  XactModificationLevel ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/ * masterConnection ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static void
FUNC13(CopyStmt *copyStatement, char *completionTag)
{
	bool isCopyFromWorker = false;

	FUNC0();

	/* disallow COPY to/from file or program except for superusers */
	if (copyStatement->filename != NULL && !FUNC12())
	{
		if (copyStatement->is_program)
		{
			FUNC8(ERROR,
					(FUNC9(ERRCODE_INSUFFICIENT_PRIVILEGE),
					 FUNC11("must be superuser to COPY to or from an external program"),
					 FUNC10("Anyone can COPY to stdout or from stdin. "
							 "psql's \\copy command also works for anyone.")));
		}
		else
		{
			FUNC8(ERROR,
					(FUNC9(ERRCODE_INSUFFICIENT_PRIVILEGE),
					 FUNC11("must be superuser to COPY to or from a file"),
					 FUNC10("Anyone can COPY to stdout or from stdin. "
							 "psql's \\copy command also works for anyone.")));
		}
	}

	masterConnection = NULL; /* reset, might still be set after error */
	isCopyFromWorker = FUNC5(copyStatement);
	if (isCopyFromWorker)
	{
		FUNC1(copyStatement, completionTag);
	}
	else
	{
		Oid relationId = FUNC7(copyStatement->relation, NoLock, false);
		char partitionMethod = FUNC6(relationId);

		/* disallow modifications to a partition table which have rep. factor > 1 */
		FUNC4(relationId);

		if (partitionMethod == DISTRIBUTE_BY_HASH || partitionMethod ==
			DISTRIBUTE_BY_RANGE || partitionMethod == DISTRIBUTE_BY_NONE)
		{
			FUNC2(copyStatement, completionTag);
		}
		else if (partitionMethod == DISTRIBUTE_BY_APPEND)
		{
			FUNC3(copyStatement, completionTag, relationId);
		}
		else
		{
			FUNC8(ERROR, (FUNC9(ERRCODE_FEATURE_NOT_SUPPORTED),
							FUNC11("unsupported partition method")));
		}
	}

	XactModificationLevel = XACT_MODIFICATION_DATA;
}