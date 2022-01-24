#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ distPartitionRelationId; scalar_t__ distObjectRelationId; } ;
struct TYPE_4__ {int isValid; } ;
typedef  scalar_t__ Oid ;
typedef  TYPE_1__ DistTableCacheEntry ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  DistTableCacheHash ; 
 int /*<<< orphan*/  HASH_FIND ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_3__ MetadataCache ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC4(Datum argument, Oid relationId)
{
	/* invalidate either entire cache or a specific entry */
	if (relationId == InvalidOid)
	{
		FUNC1();
		FUNC0();
	}
	else
	{
		void *hashKey = (void *) &relationId;
		bool foundInCache = false;


		DistTableCacheEntry *cacheEntry = FUNC3(DistTableCacheHash, hashKey,
													  HASH_FIND, &foundInCache);
		if (foundInCache)
		{
			cacheEntry->isValid = false;
		}

		/*
		 * If pg_dist_partition is being invalidated drop all state
		 * This happens pretty rarely, but most importantly happens during
		 * DROP EXTENSION citus;
		 */
		if (relationId == MetadataCache.distPartitionRelationId)
		{
			FUNC2();
		}

		if (relationId == MetadataCache.distObjectRelationId)
		{
			FUNC0();
		}
	}
}