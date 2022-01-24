#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* zone_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
struct zone_cache {scalar_t__ zcc_depot_index; int /*<<< orphan*/  zcc_depot_lock; struct zcc_per_cpu_cache* zcc_per_cpu_caches; } ;
struct zcc_per_cpu_cache {int /*<<< orphan*/  current; int /*<<< orphan*/  previous; } ;
struct TYPE_7__ {int cpu_id; } ;
struct TYPE_6__ {int /*<<< orphan*/  elem_size; struct zone_cache* zcache; } ;

/* Variables and functions */
 int /*<<< orphan*/  ASAN_HEAP_FREED ; 
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_5__* FUNC1 () ; 
 scalar_t__ depot_element_count ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,void*) ; 
 scalar_t__ FUNC8 (struct zone_cache*) ; 
 int /*<<< orphan*/  FUNC9 (struct zone_cache*,struct zcc_per_cpu_cache*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool FUNC14(zone_t zone, void *addr)
{
	int	curcpu;					/* Current cpu is used to index into array of zcc_per_cpu_cache structs */
	struct	zone_cache *zcache;			/* local storage of the zone's cache */
	struct zcc_per_cpu_cache *per_cpu_cache;	/* locally store the current per_cpu_cache */

	FUNC2();
	curcpu = FUNC1()->cpu_id;
	zcache = zone->zcache;
	per_cpu_cache = &zcache->zcc_per_cpu_caches[curcpu];

	if (FUNC11(per_cpu_cache->current)) {
		/* If able, free into current magazine */
		goto free_to_current;
	} else if (FUNC11(per_cpu_cache->previous)) {
		/* If able, swap current and previous magazine and retry */
		FUNC13(&per_cpu_cache->previous, &per_cpu_cache->current);
		goto free_to_current;
	} else{
		FUNC5(&(zcache->zcc_depot_lock));
		if (FUNC8(zcache) && (zcache->zcc_depot_index < depot_element_count)) {
			/* If able, rotate in a new empty magazine from the depot and retry */
			FUNC9(zcache, per_cpu_cache);
			FUNC6(&(zcache->zcc_depot_lock));
			goto free_to_current;
		}
		FUNC6(&(zcache->zcc_depot_lock));
		/* Attempt to free an entire magazine of elements */
		FUNC10(zone, per_cpu_cache->current);
		if(FUNC11(per_cpu_cache->current)){
			goto free_to_current;
		}
	}

	/* If not able to use cache return FALSE and fall through to zfree */
	FUNC3();
	return FALSE;

free_to_current:
	FUNC0(FUNC11(per_cpu_cache->current));
	FUNC7(zone, addr);
	FUNC12(per_cpu_cache->current, addr);

#if KASAN_ZALLOC
	kasan_poison_range((vm_offset_t)addr, zone->elem_size, ASAN_HEAP_FREED);
#endif

	FUNC3();
	return TRUE;
}