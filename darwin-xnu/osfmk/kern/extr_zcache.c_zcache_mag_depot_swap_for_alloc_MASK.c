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
struct zone_cache {size_t zcc_depot_index; int /*<<< orphan*/ * zcc_depot_list; } ;
struct zcc_per_cpu_cache {int /*<<< orphan*/  current; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct zone_cache*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC3(struct zone_cache *zcache, struct zcc_per_cpu_cache *cache)
{
	/* Loads a full magazine from which we can allocate */
	FUNC0(FUNC1(zcache));
	FUNC0(zcache->zcc_depot_index > 0);
	zcache->zcc_depot_index --;
	FUNC2(&cache->current, &zcache->zcc_depot_list[zcache->zcc_depot_index]);
}