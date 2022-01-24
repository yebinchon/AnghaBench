#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* data; } ;
typedef  TYPE_1__* StringInfo ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 () ; 

char *
FUNC8(Oid partitionTableId)
{
	StringInfo detachPartitionCommand = FUNC7();
	Oid parentId = InvalidOid;
	char *tableQualifiedName = NULL;
	char *parentTableQualifiedName = NULL;

	if (!FUNC0(partitionTableId))
	{
		char *relationName = FUNC6(partitionTableId);

		FUNC2(ERROR, (FUNC3("\"%s\" is not a partition", relationName)));
	}

	parentId = FUNC5(partitionTableId);
	tableQualifiedName = FUNC4(partitionTableId);
	parentTableQualifiedName = FUNC4(parentId);

	FUNC1(detachPartitionCommand,
					 "ALTER TABLE IF EXISTS %s DETACH PARTITION %s;",
					 parentTableQualifiedName, tableQualifiedName);

	return detachPartitionCommand->data;
}