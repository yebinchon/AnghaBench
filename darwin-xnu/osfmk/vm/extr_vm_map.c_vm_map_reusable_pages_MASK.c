#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_object_t ;
typedef  scalar_t__ vm_object_offset_t ;
typedef  TYPE_2__* vm_map_t ;
typedef  scalar_t__ vm_map_offset_t ;
typedef  TYPE_3__* vm_map_entry_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_25__ {int /*<<< orphan*/  reusable_pages_success; int /*<<< orphan*/  reusable_pages_shared; int /*<<< orphan*/  reusable_shared; int /*<<< orphan*/  reusable_pages_failure; int /*<<< orphan*/  reusable_nonwritable; } ;
struct TYPE_24__ {scalar_t__ vme_start; int protection; int /*<<< orphan*/  use_pmap; int /*<<< orphan*/  is_sub_map; scalar_t__ iokit_acct; int /*<<< orphan*/  vme_end; int /*<<< orphan*/  used_for_jit; struct TYPE_24__* vme_next; } ;
struct TYPE_23__ {scalar_t__ pmap; } ;
struct TYPE_22__ {int ref_count; scalar_t__ copy_strategy; struct TYPE_22__* shadow; struct TYPE_22__* copy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INVALID_ADDRESS ; 
 int /*<<< orphan*/  KERN_PROTECTION_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 scalar_t__ MEMORY_OBJECT_COPY_SYMMETRIC ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 scalar_t__ VM_MEMORY_MALLOC_LARGE ; 
 int /*<<< orphan*/  VM_MEMORY_MALLOC_LARGE_REUSABLE ; 
 scalar_t__ VM_MEMORY_MALLOC_LARGE_REUSED ; 
 TYPE_1__* VM_OBJECT_NULL ; 
 int VM_PROT_WRITE ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ kernel_pmap ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,scalar_t__,scalar_t__,TYPE_3__**) ; 
 TYPE_3__* FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 TYPE_4__ vm_page_stats_reusable ; 

__attribute__((used)) static kern_return_t
FUNC14(
	vm_map_t	map,
	vm_map_offset_t	start,
	vm_map_offset_t	end)
{
	vm_map_entry_t 			entry;
	vm_object_t			object;
	vm_object_offset_t		start_offset, end_offset;
	vm_map_offset_t			pmap_offset;

	/*
	 * The MADV_REUSABLE operation doesn't require any changes to the
	 * vm_map_entry_t's, so the read lock is sufficient.
	 */

	FUNC7(map);
	FUNC5(map->pmap != kernel_pmap);	/* protect alias access */

	/*
	 * The madvise semantics require that the address range be fully
	 * allocated with no holes.  Otherwise, we're required to return
	 * an error.
	 */

	if (!FUNC8(map, start, end, &entry)) {
		FUNC10(map);
		vm_page_stats_reusable.reusable_pages_failure++;
		return KERN_INVALID_ADDRESS;
	}

	/*
	 * Examine each vm_map_entry_t in the range.
	 */
	for (; entry != FUNC9(map) && entry->vme_start < end;
	     entry = entry->vme_next) {
		int kill_pages = 0;

		/*
		 * Sanity check on the VM map entry.
		 */
		if (! FUNC6(entry)) {
			FUNC10(map);
			vm_page_stats_reusable.reusable_pages_failure++;
			return KERN_INVALID_ADDRESS;
		}

		if (! (entry->protection & VM_PROT_WRITE) && !entry->used_for_jit) {
			/* not writable: can't discard contents */
			FUNC10(map);
			vm_page_stats_reusable.reusable_nonwritable++;
			vm_page_stats_reusable.reusable_pages_failure++;
			return KERN_PROTECTION_FAILURE;
		}

		/*
		 * The first time through, the start address could be anywhere
		 * within the vm_map_entry we found.  So adjust the offset to
		 * correspond.
		 */
		if (entry->vme_start < start) {
			start_offset = start - entry->vme_start;
			pmap_offset = start;
		} else {
			start_offset = 0;
			pmap_offset = entry->vme_start;
		}
		end_offset = FUNC0(end, entry->vme_end) - entry->vme_start;
		start_offset += FUNC4(entry);
		end_offset += FUNC4(entry);

		FUNC5(!entry->is_sub_map);
		object = FUNC3(entry);
		if (object == VM_OBJECT_NULL)
			continue;


		FUNC12(object);
		if (((object->ref_count == 1) ||
		     (object->copy_strategy != MEMORY_OBJECT_COPY_SYMMETRIC &&
		      object->copy == VM_OBJECT_NULL)) &&
		    object->shadow == VM_OBJECT_NULL &&
		    /*
		     * "iokit_acct" entries are billed for their virtual size
		     * (rather than for their resident pages only), so they
		     * wouldn't benefit from making pages reusable, and it
		     * would be hard to keep track of pages that are both
		     * "iokit_acct" and "reusable" in the pmap stats and
		     * ledgers.
		     */
		    !(entry->iokit_acct ||
		      (!entry->is_sub_map && !entry->use_pmap))) {
			if (object->ref_count != 1) {
				vm_page_stats_reusable.reusable_shared++;
			}
			kill_pages = 1;
		} else {
			kill_pages = -1;
		}
		if (kill_pages != -1) {
			FUNC11(object,
						   start_offset,
						   end_offset - start_offset,
						   kill_pages,
						   TRUE /*reusable_pages*/,
						   map->pmap,
						   pmap_offset);
		} else {
			vm_page_stats_reusable.reusable_pages_shared++;
		}
		FUNC13(object);

		if (FUNC1(entry) == VM_MEMORY_MALLOC_LARGE ||
		    FUNC1(entry) == VM_MEMORY_MALLOC_LARGE_REUSED) {
			/*
			 * XXX
			 * We do not hold the VM map exclusively here.
			 * The "alias" field is not that critical, so it's
			 * safe to update it here, as long as it is the only
			 * one that can be modified while holding the VM map
			 * "shared".
			 */
			FUNC2(entry, VM_MEMORY_MALLOC_LARGE_REUSABLE);
		}
	}

	FUNC10(map);
	vm_page_stats_reusable.reusable_pages_success++;
	return KERN_SUCCESS;
}