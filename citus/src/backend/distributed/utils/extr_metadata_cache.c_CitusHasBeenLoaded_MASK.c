#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int extensionLoaded; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ MetadataCache ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ creating_extension ; 

bool
FUNC4(void)
{
	if (!MetadataCache.extensionLoaded || creating_extension)
	{
		/*
		 * Refresh if we have not determined whether the extension has been
		 * loaded yet, or in case of ALTER EXTENSION since we want to treat
		 * Citus as "not loaded" during ALTER EXTENSION citus.
		 */
		bool extensionLoaded = FUNC0();

		if (extensionLoaded && !MetadataCache.extensionLoaded)
		{
			/*
			 * Loaded Citus for the first time in this session, or first time after
			 * CREATE/ALTER EXTENSION citus. Do some initialisation.
			 */

			/*
			 * Make sure the maintenance daemon is running if it was not already.
			 */
			FUNC3();

			/*
			 * InvalidateDistRelationCacheCallback resets state such as extensionLoaded
			 * when it notices changes to pg_dist_partition (which usually indicate
			 * `DROP EXTENSION citus;` has been run)
			 *
			 * Ensure InvalidateDistRelationCacheCallback will notice those changes
			 * by caching pg_dist_partition's oid.
			 *
			 * We skip these checks during upgrade since pg_dist_partition is not
			 * present during early stages of upgrade operation.
			 */
			FUNC2();

			/*
			 * This needs to be initialized so we can receive foreign relation graph
			 * invalidation messages in InvalidateForeignRelationGraphCacheCallback().
			 * See the comments of InvalidateForeignKeyGraph for more context.
			 */
			FUNC1();
		}

		MetadataCache.extensionLoaded = extensionLoaded;
	}

	return MetadataCache.extensionLoaded;
}