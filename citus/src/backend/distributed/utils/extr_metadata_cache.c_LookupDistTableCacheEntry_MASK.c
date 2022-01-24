#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int isValid; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  TYPE_1__ DistTableCacheEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int DEBUG1 ; 
 int /*<<< orphan*/  DistTableCacheHash ; 
 int ERROR ; 
 scalar_t__ EnableVersionChecks ; 
 int /*<<< orphan*/  HASH_ENTER ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  citusVersionKnownCompatible ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static DistTableCacheEntry *
FUNC11(Oid relationId)
{
	DistTableCacheEntry *cacheEntry = NULL;
	bool foundInCache = false;
	void *hashKey = (void *) &relationId;

	/*
	 * Can't be a distributed relation if the extension hasn't been loaded
	 * yet. As we can't do lookups in nonexistent tables, directly return NULL
	 * here.
	 */
	if (!FUNC3())
	{
		return NULL;
	}

	FUNC5();

	/*
	 * If the version is not known to be compatible, perform thorough check,
	 * unless such checks are disabled.
	 */
	if (!citusVersionKnownCompatible && EnableVersionChecks)
	{
		bool isDistributed = FUNC6(relationId);
		int reportLevel = DEBUG1;

		/*
		 * If there's a version-mismatch, and we're dealing with a distributed
		 * table, we have to error out as we can't return a valid entry.  We
		 * want to check compatibility in the non-distributed case as well, so
		 * future lookups can use the cache if compatible.
		 */
		if (isDistributed)
		{
			reportLevel = ERROR;
		}

		if (!FUNC2(reportLevel))
		{
			/* incompatible, can't access cache, so return before doing so */
			return NULL;
		}
	}

	cacheEntry = FUNC9(DistTableCacheHash, hashKey, HASH_ENTER, &foundInCache);

	/* return valid matches */
	if (foundInCache)
	{
		/*
		 * We might have some concurrent metadata changes. In order to get the changes,
		 * we first need to accept the cache invalidation messages.
		 */
		FUNC0();

		if (cacheEntry->isValid)
		{
			return cacheEntry;
		}

		/* free the content of old, invalid, entries */
		FUNC8(cacheEntry);
	}

	/* zero out entry, but not the key part */
	FUNC10(((char *) cacheEntry) + sizeof(Oid), 0,
		   sizeof(DistTableCacheEntry) - sizeof(Oid));

	/*
	 * We disable interrupts while creating the cache entry because loading
	 * shard metadata can take a while, and if statement_timeout is too low,
	 * this will get canceled on each call and we won't be able to run any
	 * queries on the table.
	 */
	FUNC4();

	/* actually fill out entry */
	FUNC1(cacheEntry);

	/* and finally mark as valid */
	cacheEntry->isValid = true;

	FUNC7();

	return cacheEntry;
}