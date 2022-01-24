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
typedef  TYPE_1__* zone_t ;
struct zone_cache {int zcc_depot_index; int /*<<< orphan*/  zcc_depot_lock; int /*<<< orphan*/ * zcc_depot_list; } ;
struct TYPE_4__ {struct zone_cache* zcache; } ;

/* Variables and functions */
 int ZCACHE_DEPOT_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct zone_cache*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC4(zone_t zone)
{
	struct zone_cache *zcache = zone->zcache;
	int drain_depot_index = 0;

	/*
	 * Grab the current depot list from the zone cache. If it has full magazines, 
	 * mark the depot as invalid and drain it.
	 */
	FUNC0(&(zcache->zcc_depot_lock));
	if (!FUNC2(zcache) || (zcache->zcc_depot_index == 0)) {
		/* no full magazines in the depot or depot unavailable; nothing to drain here */
		FUNC1(&(zcache->zcc_depot_lock));
		return;
	}
	drain_depot_index = zcache->zcc_depot_index;
	/* Mark the depot as unavailable */
	zcache->zcc_depot_index = ZCACHE_DEPOT_INVALID;
	FUNC1(&(zcache->zcc_depot_lock));

	/* Now drain the full magazines in the depot */
	for (int i = 0; i < drain_depot_index; i++)
		FUNC3(zone, zcache->zcc_depot_list[i]);

	FUNC0(&(zcache->zcc_depot_lock));
	/* Mark the depot as available again */
	zcache->zcc_depot_index = 0;
	FUNC1(&(zcache->zcc_depot_lock));
}