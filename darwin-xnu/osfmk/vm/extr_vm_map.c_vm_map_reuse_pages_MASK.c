#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_object_t ;
typedef  scalar_t__ vm_object_offset_t ;
typedef  TYPE_1__* vm_map_t ;
typedef  scalar_t__ vm_map_offset_t ;
typedef  TYPE_2__* vm_map_entry_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_18__ {int /*<<< orphan*/  reuse_pages_success; int /*<<< orphan*/  reuse_pages_failure; } ;
struct TYPE_17__ {scalar_t__ vme_start; int /*<<< orphan*/  is_sub_map; int /*<<< orphan*/  vme_end; struct TYPE_17__* vme_next; } ;
struct TYPE_16__ {scalar_t__ pmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INVALID_ADDRESS ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 scalar_t__ VM_MEMORY_MALLOC_LARGE_REUSABLE ; 
 int /*<<< orphan*/  VM_MEMORY_MALLOC_LARGE_REUSED ; 
 scalar_t__ VM_OBJECT_NULL ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ kernel_pmap ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,scalar_t__,scalar_t__,TYPE_2__**) ; 
 TYPE_2__* FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 TYPE_3__ vm_page_stats_reusable ; 

__attribute__((used)) static kern_return_t
FUNC14(
	vm_map_t	map,
	vm_map_offset_t	start,
	vm_map_offset_t	end)
{
	vm_map_entry_t 			entry;
	vm_object_t			object;
	vm_object_offset_t		start_offset, end_offset;

	/*
	 * The MADV_REUSE operation doesn't require any changes to the
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
		vm_page_stats_reusable.reuse_pages_failure++;
		return KERN_INVALID_ADDRESS;
	}

	/*
	 * Examine each vm_map_entry_t in the range.
	 */
	for (; entry != FUNC9(map) && entry->vme_start < end;
	     entry = entry->vme_next) {
		/*
		 * Sanity check on the VM map entry.
		 */
		if (! FUNC6(entry)) {
			FUNC10(map);
			vm_page_stats_reusable.reuse_pages_failure++;
			return KERN_INVALID_ADDRESS;
		}

		/*
		 * The first time through, the start address could be anywhere
		 * within the vm_map_entry we found.  So adjust the offset to
		 * correspond.
		 */
		if (entry->vme_start < start) {
			start_offset = start - entry->vme_start;
		} else {
			start_offset = 0;
		}
		end_offset = FUNC0(end, entry->vme_end) - entry->vme_start;
		start_offset += FUNC4(entry);
		end_offset += FUNC4(entry);

		FUNC5(!entry->is_sub_map);
		object = FUNC3(entry);
		if (object != VM_OBJECT_NULL) {
			FUNC11(object);
			FUNC12(object, start_offset, end_offset,
					      TRUE);
			FUNC13(object);
		}

		if (FUNC1(entry) == VM_MEMORY_MALLOC_LARGE_REUSABLE) {
			/*
			 * XXX
			 * We do not hold the VM map exclusively here.
			 * The "alias" field is not that critical, so it's
			 * safe to update it here, as long as it is the only
			 * one that can be modified while holding the VM map
			 * "shared".
			 */
			FUNC2(entry, VM_MEMORY_MALLOC_LARGE_REUSED);
		}
	}

	FUNC10(map);
	vm_page_stats_reusable.reuse_pages_success++;
	return KERN_SUCCESS;
}