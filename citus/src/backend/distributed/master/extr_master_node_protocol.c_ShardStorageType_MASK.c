#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 char RELKIND_FOREIGN_TABLE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 char SHARD_STORAGE_COLUMNAR ; 
 char SHARD_STORAGE_FOREIGN ; 
 char SHARD_STORAGE_TABLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char) ; 
 char FUNC5 (int /*<<< orphan*/ ) ; 

char
FUNC6(Oid relationId)
{
	char shardStorageType = 0;

	char relationType = FUNC5(relationId);
	if (FUNC1(relationId))
	{
		shardStorageType = SHARD_STORAGE_TABLE;
	}
	else if (relationType == RELKIND_FOREIGN_TABLE)
	{
		bool cstoreTable = FUNC0(relationId);
		if (cstoreTable)
		{
			shardStorageType = SHARD_STORAGE_COLUMNAR;
		}
		else
		{
			shardStorageType = SHARD_STORAGE_FOREIGN;
		}
	}
	else
	{
		FUNC2(ERROR, (FUNC3(ERRCODE_FEATURE_NOT_SUPPORTED),
						FUNC4("unexpected relation type: %c", relationType)));
	}

	return shardStorageType;
}