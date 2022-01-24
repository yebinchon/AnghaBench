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
struct TYPE_4__ {scalar_t__ isDistributedTable; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ DistTableCacheEntry ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

DistTableCacheEntry *
FUNC4(Oid distributedRelationId)
{
	DistTableCacheEntry *cacheEntry =
		FUNC0(distributedRelationId);

	if (cacheEntry && cacheEntry->isDistributedTable)
	{
		return cacheEntry;
	}
	else
	{
		char *relationName = FUNC3(distributedRelationId);
		FUNC1(ERROR, (FUNC2("relation %s is not distributed", relationName)));
	}
}