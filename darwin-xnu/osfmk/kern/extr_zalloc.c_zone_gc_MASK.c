#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* zone_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_11__ {int /*<<< orphan*/  options; } ;
struct TYPE_9__ {int /*<<< orphan*/  all_free; } ;
struct TYPE_10__ {TYPE_1__ pages; int /*<<< orphan*/  collectable; } ;

/* Variables and functions */
 int /*<<< orphan*/  TH_OPT_ZONE_GC ; 
 int ZALLOC_DEBUG_ZONEGC ; 
 TYPE_2__* ZONE_NULL ; 
 int /*<<< orphan*/  all_zones_lock ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_7__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned int num_zones ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int zalloc_debug ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 TYPE_2__* zone_array ; 
 scalar_t__ FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  zone_gc_lock ; 

void
FUNC12(boolean_t consider_jetsams)
{
	unsigned int	max_zones;
	zone_t			z;
	unsigned int	i;

	if (consider_jetsams) {
		FUNC3();
		/*
		 * If we do end up jetsamming something, we need to do a zone_gc so that
		 * we can reclaim free zone elements and update the zone map size.
		 * Fall through.
		 */
	}

	FUNC5(&zone_gc_lock);

	FUNC1()->options |= TH_OPT_ZONE_GC;

	FUNC8(&all_zones_lock);
	max_zones = num_zones;
	FUNC9(&all_zones_lock);

	if (zalloc_debug & ZALLOC_DEBUG_ZONEGC)
		FUNC4("zone_gc() starting...\n");

	for (i = 0; i < max_zones; i++) {
		z = &(zone_array[i]);
		FUNC0(z != ZONE_NULL);

		if (!z->collectable) {
			continue;
		}
#if CONFIG_ZCACHE
		if (zone_caching_enabled(z)) {
			zcache_drain_depot(z);
		}
#endif /* CONFIG_ZCACHE */
		if (FUNC7(&z->pages.all_free)) {
			continue;
		}
		
		FUNC2(z);
	}

	FUNC1()->options &= ~TH_OPT_ZONE_GC;

	FUNC6(&zone_gc_lock);
}