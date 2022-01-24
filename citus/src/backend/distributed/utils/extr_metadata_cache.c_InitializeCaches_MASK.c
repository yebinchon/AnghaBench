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

/* Variables and functions */
 int /*<<< orphan*/  ALLOCSET_DEFAULT_SIZES ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * CacheMemoryContext ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * DistShardCacheHash ; 
 int /*<<< orphan*/ * DistTableCacheHash ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * MetadataCacheMemoryContext ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void
FUNC11(void)
{
	static bool performedInitialization = false;

	if (!performedInitialization)
	{
		MetadataCacheMemoryContext = NULL;

		/*
		 * If either of dist table cache or shard cache
		 * allocation and initializations fail due to an exception
		 * that is caused by OOM or any other reason,
		 * we reset the flag, and delete the shard cache memory
		 * context to reclaim partially allocated memory.
		 *
		 * Command will continue to fail since we re-throw the exception.
		 */
		FUNC7();
		{
			/* set first, to avoid recursion dangers */
			performedInitialization = true;

			/* make sure we've initialized CacheMemoryContext */
			if (CacheMemoryContext == NULL)
			{
				FUNC1();
			}

			MetadataCacheMemoryContext = FUNC0(
				CacheMemoryContext,
				"MetadataCacheMemoryContext",
				ALLOCSET_DEFAULT_SIZES);

			FUNC2();
			FUNC8();
			FUNC10();
			FUNC9();
		}
		FUNC4();
		{
			performedInitialization = false;

			if (MetadataCacheMemoryContext != NULL)
			{
				FUNC3(MetadataCacheMemoryContext);
			}

			MetadataCacheMemoryContext = NULL;
			DistTableCacheHash = NULL;
			DistShardCacheHash = NULL;

			FUNC6();
		}
		FUNC5();
	}
}