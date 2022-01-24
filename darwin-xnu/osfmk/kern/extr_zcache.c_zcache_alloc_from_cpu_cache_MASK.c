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
 int /*<<< orphan*/  ASAN_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,void*) ; 
 scalar_t__ FUNC8 (struct zone_cache*) ; 
 int /*<<< orphan*/  FUNC9 (struct zone_cache*,struct zcc_per_cpu_cache*) ; 
 scalar_t__ FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

vm_offset_t FUNC14(zone_t zone)
{
	int curcpu;					/* Current cpu is used to index into array of zcc_per_cpu_cache structs */
	void *ret = NULL;				/* Points to the element which will be returned */
	struct	zone_cache *zcache;			/* local storage of the zone's cache */
	struct zcc_per_cpu_cache *per_cpu_cache; 	/* locally store the current per_cpu_cache */

	FUNC2();
	curcpu = FUNC1()->cpu_id;
	zcache = zone->zcache;
	per_cpu_cache = &zcache->zcc_per_cpu_caches[curcpu];

	if (FUNC11(per_cpu_cache->current)) {
		/* If able, allocate from current magazine */
		goto allocate_from_current;
	} else if (FUNC11(per_cpu_cache->previous)) {
		/* If able, swap current and previous magazine and retry */
		FUNC13(&per_cpu_cache->previous, &per_cpu_cache->current);
		goto allocate_from_current;
	} else {
		FUNC5(&(zcache->zcc_depot_lock));
		if (FUNC8(zcache) && (zcache->zcc_depot_index > 0)) {
			/* If able, rotate in a full magazine from the depot */
			FUNC9(zcache, per_cpu_cache);
			FUNC6(&(zcache->zcc_depot_lock));
			goto allocate_from_current;
		}
		FUNC6(&(zcache->zcc_depot_lock));
		/* Attempt to allocate an entire magazine of elements */
		if(FUNC10(zone, per_cpu_cache->current)){
			goto allocate_from_current;
		}
	}

	/* If unable to allocate from cache return NULL and fall through to zalloc */
	FUNC3();
	return (vm_offset_t) NULL;

allocate_from_current:
	ret = FUNC12(per_cpu_cache->current);
	FUNC0(ret != NULL);
	FUNC7(zone, ret);

#if KASAN_ZALLOC
	kasan_poison_range((vm_offset_t)ret, zone->elem_size, ASAN_VALID);
#endif

	FUNC3();
	return (vm_offset_t) ret;
}