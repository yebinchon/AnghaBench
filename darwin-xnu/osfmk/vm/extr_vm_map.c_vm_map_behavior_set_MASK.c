#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_map_t ;
typedef  scalar_t__ vm_map_offset_t ;
typedef  TYPE_1__* vm_map_entry_t ;
typedef  int vm_behavior_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_6__ {scalar_t__ vme_start; int behavior; struct TYPE_6__* vme_next; int /*<<< orphan*/  zero_wired_pages; int /*<<< orphan*/  use_pmap; int /*<<< orphan*/  is_sub_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INVALID_ADDRESS ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_NO_SPACE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
#define  VM_BEHAVIOR_CAN_REUSE 139 
#define  VM_BEHAVIOR_DEFAULT 138 
#define  VM_BEHAVIOR_DONTNEED 137 
#define  VM_BEHAVIOR_FREE 136 
#define  VM_BEHAVIOR_PAGEOUT 135 
#define  VM_BEHAVIOR_RANDOM 134 
#define  VM_BEHAVIOR_REUSABLE 133 
#define  VM_BEHAVIOR_REUSE 132 
#define  VM_BEHAVIOR_RSEQNTL 131 
#define  VM_BEHAVIOR_SEQUENTIAL 130 
#define  VM_BEHAVIOR_WILLNEED 129 
#define  VM_BEHAVIOR_ZERO_WIRED_PAGES 128 
 int VM_SYNC_CONTIGUOUS ; 
 int VM_SYNC_DEACTIVATE ; 
 int VM_SYNC_KILLPAGES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XPR_VM_MAP ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

kern_return_t
FUNC16(
	vm_map_t	map,
	vm_map_offset_t	start,
	vm_map_offset_t	end,
	vm_behavior_t	new_behavior)
{
	vm_map_entry_t	entry;
	vm_map_entry_t	temp_entry;

	FUNC0(XPR_VM_MAP,
	    "vm_map_behavior_set, 0x%X start 0x%X end 0x%X behavior %d",
	    map, start, end, new_behavior, 0);

	if (start > end ||
	    start < FUNC7(map) ||
	    end > FUNC6(map)) {
		return KERN_NO_SPACE;
	}

	switch (new_behavior) {

	/*
	 * This first block of behaviors all set a persistent state on the specified
	 * memory range.  All we have to do here is to record the desired behavior
	 * in the vm_map_entry_t's.
	 */

	case VM_BEHAVIOR_DEFAULT:
	case VM_BEHAVIOR_RANDOM:
	case VM_BEHAVIOR_SEQUENTIAL:
	case VM_BEHAVIOR_RSEQNTL:
	case VM_BEHAVIOR_ZERO_WIRED_PAGES:
		FUNC5(map);

		/*
		 *	The entire address range must be valid for the map.
		 * 	Note that vm_map_range_check() does a
		 *	vm_map_lookup_entry() internally and returns the
		 *	entry containing the start of the address range if
		 *	the entire range is valid.
		 */
		if (FUNC10(map, start, end, &temp_entry)) {
			entry = temp_entry;
			FUNC4(map, entry, start);
		}
		else {
			FUNC14(map);
			return(KERN_INVALID_ADDRESS);
		}

		while ((entry != FUNC13(map)) && (entry->vme_start < end)) {
			FUNC3(map, entry, end);
			if (entry->is_sub_map) {
				FUNC1(!entry->use_pmap);
			}

			if( new_behavior == VM_BEHAVIOR_ZERO_WIRED_PAGES ) {
				entry->zero_wired_pages = TRUE;
			} else {
				entry->behavior = new_behavior;
			}
			entry = entry->vme_next;
		}

		FUNC14(map);
		break;

	/*
	 * The rest of these are different from the above in that they cause
	 * an immediate action to take place as opposed to setting a behavior that
	 * affects future actions.
	 */

	case VM_BEHAVIOR_WILLNEED:
		return FUNC15(map, start, end);

	case VM_BEHAVIOR_DONTNEED:
		return FUNC8(map, start, end - start, VM_SYNC_DEACTIVATE | VM_SYNC_CONTIGUOUS);

	case VM_BEHAVIOR_FREE:
		return FUNC8(map, start, end - start, VM_SYNC_KILLPAGES | VM_SYNC_CONTIGUOUS);

	case VM_BEHAVIOR_REUSABLE:
		return FUNC11(map, start, end);

	case VM_BEHAVIOR_REUSE:
		return FUNC12(map, start, end);

	case VM_BEHAVIOR_CAN_REUSE:
		return FUNC2(map, start, end);

#if MACH_ASSERT
	case VM_BEHAVIOR_PAGEOUT:
		return vm_map_pageout(map, start, end);
#endif /* MACH_ASSERT */

	default:
		return(KERN_INVALID_ARGUMENT);
	}

	return(KERN_SUCCESS);
}