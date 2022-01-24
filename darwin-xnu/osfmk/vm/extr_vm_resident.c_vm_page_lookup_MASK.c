#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  scalar_t__ vm_page_queue_entry_t ;
typedef  scalar_t__ vm_page_object_t ;
struct TYPE_16__ {int /*<<< orphan*/  page_list; } ;
typedef  TYPE_2__ vm_page_bucket_t ;
typedef  TYPE_3__* vm_object_t ;
typedef  scalar_t__ vm_object_offset_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  lck_spin_t ;
struct TYPE_18__ {int /*<<< orphan*/  vpl_miss; int /*<<< orphan*/  vpl_hit; int /*<<< orphan*/  vpl_fast_elapsed; int /*<<< orphan*/  vpl_fast; int /*<<< orphan*/  vpl_slow_elapsed; int /*<<< orphan*/  vpl_slow; int /*<<< orphan*/  vpl_bucket_NULL; int /*<<< orphan*/  vpl_hit_hint_prev; int /*<<< orphan*/  vpl_hit_hint_next; int /*<<< orphan*/  vpl_hit_hint; int /*<<< orphan*/  vpl_empty_obj; int /*<<< orphan*/  vpl_total; } ;
struct TYPE_17__ {scalar_t__ resident_page_count; TYPE_1__* memq_hint; int /*<<< orphan*/  memq; } ;
struct TYPE_15__ {scalar_t__ vmp_offset; scalar_t__ vmp_object; int /*<<< orphan*/  vmp_next_m; int /*<<< orphan*/  vmp_listq; } ;

/* Variables and functions */
 int BUCKETS_PER_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ VM_PAGE_HASH_LOOKUP_THRESHOLD ; 
 TYPE_1__* VM_PAGE_NULL ; 
 TYPE_3__* FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/ * vm_page_bucket_locks ; 
 TYPE_2__* vm_page_buckets ; 
 int FUNC10 (TYPE_3__*,scalar_t__) ; 
 TYPE_4__ vm_page_lookup_stats ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 

vm_page_t
FUNC15(
	vm_object_t		object,
	vm_object_offset_t	offset)
{
	vm_page_t	mem;
	vm_page_bucket_t *bucket;
	vm_page_queue_entry_t	qe;
	lck_spin_t	*bucket_lock = NULL;
	int		hash_id;
#if DEBUG_VM_PAGE_LOOKUP
	uint64_t	start, elapsed;

	OSAddAtomic64(1, &vm_page_lookup_stats.vpl_total);
#endif
	FUNC9(object);

	if (object->resident_page_count == 0) {
#if DEBUG_VM_PAGE_LOOKUP
		OSAddAtomic64(1, &vm_page_lookup_stats.vpl_empty_obj);
#endif
		return (VM_PAGE_NULL);
	}

	mem = object->memq_hint;

	if (mem != VM_PAGE_NULL) {
		FUNC5(FUNC2(mem) == object);

		if (mem->vmp_offset == offset) {
#if DEBUG_VM_PAGE_LOOKUP
			OSAddAtomic64(1, &vm_page_lookup_stats.vpl_hit_hint);
#endif
			return (mem);
		}
		qe = (vm_page_queue_entry_t)FUNC13(&mem->vmp_listq);

		if (! FUNC11(&object->memq, qe)) {
			vm_page_t	next_page;

			next_page = (vm_page_t)((uintptr_t)qe);
			FUNC5(FUNC2(next_page) == object);

			if (next_page->vmp_offset == offset) {
				object->memq_hint = next_page; /* new hint */
#if DEBUG_VM_PAGE_LOOKUP
				OSAddAtomic64(1, &vm_page_lookup_stats.vpl_hit_hint_next);
#endif
				return (next_page);
			}
		}
		qe = (vm_page_queue_entry_t)FUNC14(&mem->vmp_listq);

		if (! FUNC11(&object->memq, qe)) {
			vm_page_t prev_page;

			prev_page = (vm_page_t)((uintptr_t)qe);
			FUNC5(FUNC2(prev_page) == object);

			if (prev_page->vmp_offset == offset) {
				object->memq_hint = prev_page; /* new hint */
#if DEBUG_VM_PAGE_LOOKUP
				OSAddAtomic64(1, &vm_page_lookup_stats.vpl_hit_hint_prev);
#endif
				return (prev_page);
			}
		}
	}
	/*
	 * Search the hash table for this object/offset pair
	 */
	hash_id = FUNC10(object, offset);
	bucket = &vm_page_buckets[hash_id];

	/*
	 * since we hold the object lock, we are guaranteed that no
	 * new pages can be inserted into this object... this in turn
	 * guarantess that the page we're looking for can't exist
	 * if the bucket it hashes to is currently NULL even when looked
	 * at outside the scope of the hash bucket lock... this is a 
	 * really cheap optimiztion to avoid taking the lock
	 */
	if (!bucket->page_list) {
#if DEBUG_VM_PAGE_LOOKUP
		OSAddAtomic64(1, &vm_page_lookup_stats.vpl_bucket_NULL);
#endif
	        return (VM_PAGE_NULL);
	}

#if DEBUG_VM_PAGE_LOOKUP
	start = mach_absolute_time();
#endif
	if (object->resident_page_count <= VM_PAGE_HASH_LOOKUP_THRESHOLD) {
		/*
		 * on average, it's roughly 3 times faster to run a short memq list
		 * than to take the spin lock and go through the hash list
		 */
		mem = (vm_page_t)FUNC12(&object->memq);

		while (!FUNC11(&object->memq, (vm_page_queue_entry_t)mem)) {

			if (mem->vmp_offset == offset)
				break;

			mem = (vm_page_t)FUNC13(&mem->vmp_listq);
		}
		if (FUNC11(&object->memq, (vm_page_queue_entry_t)mem))
			mem = NULL;
	} else {
		vm_page_object_t	packed_object;

		packed_object = FUNC3(object);

		bucket_lock = &vm_page_bucket_locks[hash_id / BUCKETS_PER_LOCK];

		FUNC6(bucket_lock);

		for (mem = (vm_page_t)(FUNC4(bucket->page_list));
		     mem != VM_PAGE_NULL;
		     mem = (vm_page_t)(FUNC4(mem->vmp_next_m))) {
#if 0
			/*
			 * we don't hold the page queue lock
			 * so this check isn't safe to make
			 */
			VM_PAGE_CHECK(mem);
#endif
			if ((mem->vmp_object == packed_object) && (mem->vmp_offset == offset))
				break;
		}
		FUNC7(bucket_lock);
	}

#if DEBUG_VM_PAGE_LOOKUP
	elapsed = mach_absolute_time() - start;

	if (bucket_lock) {
		OSAddAtomic64(1, &vm_page_lookup_stats.vpl_slow);
		OSAddAtomic64(elapsed, &vm_page_lookup_stats.vpl_slow_elapsed);
	} else {
		OSAddAtomic64(1, &vm_page_lookup_stats.vpl_fast);
		OSAddAtomic64(elapsed, &vm_page_lookup_stats.vpl_fast_elapsed);
	}
	if (mem != VM_PAGE_NULL)
		OSAddAtomic64(1, &vm_page_lookup_stats.vpl_hit);
	else
	        OSAddAtomic64(1, &vm_page_lookup_stats.vpl_miss);
#endif
	if (mem != VM_PAGE_NULL) {
		FUNC5(FUNC2(mem) == object);

		object->memq_hint = mem;
	}
	return (mem);
}