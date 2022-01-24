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
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 () ; 

char *
FUNC9(Oid partitionTableId)
{
	StringInfo createPartitionCommand = FUNC8();
	char *partitionBoundCString = NULL;

	Oid parentId = InvalidOid;
	char *tableQualifiedName = NULL;
	char *parentTableQualifiedName = NULL;

	if (!FUNC1(partitionTableId))
	{
		char *relationName = FUNC7(partitionTableId);

		FUNC3(ERROR, (FUNC4("\"%s\" is not a partition", relationName)));
	}

	parentId = FUNC6(partitionTableId);
	tableQualifiedName = FUNC5(partitionTableId);
	parentTableQualifiedName = FUNC5(parentId);

	partitionBoundCString = FUNC0(partitionTableId);

	FUNC2(createPartitionCommand, "ALTER TABLE %s ATTACH PARTITION %s %s;",
					 parentTableQualifiedName, tableQualifiedName,
					 partitionBoundCString);

	return createPartitionCommand->data;
}