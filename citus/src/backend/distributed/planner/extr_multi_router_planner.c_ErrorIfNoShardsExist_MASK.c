#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int shardIntervalArrayLength; int /*<<< orphan*/  relationId; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ DistTableCacheEntry ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(DistTableCacheEntry *cacheEntry)
{
	int shardCount = cacheEntry->shardIntervalArrayLength;
	if (shardCount == 0)
	{
		Oid distributedTableId = cacheEntry->relationId;
		char *relationName = FUNC5(distributedTableId);

		FUNC0(ERROR, (FUNC1(ERRCODE_OBJECT_NOT_IN_PREREQUISITE_STATE),
						FUNC4("could not find any shards"),
						FUNC2("No shards exist for distributed table \"%s\".",
								  relationName),
						FUNC3("Run master_create_worker_shards to create shards "
								"and try again.")));
	}
}