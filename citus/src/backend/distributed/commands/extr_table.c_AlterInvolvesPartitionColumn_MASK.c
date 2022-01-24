#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ varattno; } ;
typedef  TYPE_1__ Var ;
struct TYPE_12__ {char* name; } ;
struct TYPE_11__ {int /*<<< orphan*/  cmds; } ;
struct TYPE_10__ {scalar_t__ attnum; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  LOCKMODE ;
typedef  int /*<<< orphan*/ * HeapTuple ;
typedef  TYPE_2__* Form_pg_attribute ;
typedef  TYPE_3__ AlterTableStmt ;
typedef  TYPE_4__ AlterTableCmd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool
FUNC8(AlterTableStmt *alterTableStatement,
							 AlterTableCmd *command)
{
	bool involvesPartitionColumn = false;
	Var *partitionColumn = NULL;
	HeapTuple tuple = NULL;
	char *alterColumnName = command->name;

	LOCKMODE lockmode = FUNC0(alterTableStatement->cmds);
	Oid relationId = FUNC1(alterTableStatement, lockmode);
	if (!FUNC5(relationId))
	{
		return false;
	}

	partitionColumn = FUNC2(relationId);

	tuple = FUNC7(relationId, alterColumnName);
	if (FUNC4(tuple))
	{
		Form_pg_attribute targetAttr = (Form_pg_attribute) FUNC3(tuple);

		/* reference tables do not have partition column, so allow them */
		if (partitionColumn != NULL &&
			targetAttr->attnum == partitionColumn->varattno)
		{
			involvesPartitionColumn = true;
		}

		FUNC6(tuple);
	}

	return involvesPartitionColumn;
}