#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_map_t ;
typedef  scalar_t__ vm_map_size_t ;
typedef  scalar_t__ vm_map_offset_t ;
typedef  TYPE_1__* vm_map_entry_t ;
typedef  int /*<<< orphan*/  vm_map_copy_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_7__ {scalar_t__ vme_end; scalar_t__ vme_start; int max_protection; struct TYPE_7__* vme_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 int VM_MAP_COPYIN_USE_MAXPROT ; 
 int VM_PROT_NONE ; 
 int VM_PROT_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static boolean_t
FUNC7(
	vm_map_t	old_map,
	vm_map_entry_t	*old_entry_p,
	vm_map_t	new_map,
	int		vm_map_copyin_flags)
{
	vm_map_entry_t old_entry = *old_entry_p;
	vm_map_size_t entry_size = old_entry->vme_end - old_entry->vme_start;
	vm_map_offset_t start = old_entry->vme_start;
	vm_map_copy_t copy;
	vm_map_entry_t last = FUNC3(new_map);

	FUNC6(old_map);
	/*
	 *	Use maxprot version of copyin because we
	 *	care about whether this memory can ever
	 *	be accessed, not just whether it's accessible
	 *	right now.
	 */
	vm_map_copyin_flags |= VM_MAP_COPYIN_USE_MAXPROT;
	if (FUNC2(old_map, start, entry_size,
				   vm_map_copyin_flags, &copy)
	    != KERN_SUCCESS) {
		/*
		 *	The map might have changed while it
		 *	was unlocked, check it again.  Skip
		 *	any blank space or permanently
		 *	unreadable region.
		 */
		FUNC4(old_map);
		if (!FUNC5(old_map, start, &last) ||
		    (last->max_protection & VM_PROT_READ) == VM_PROT_NONE) {
			last = last->vme_next;
		}
		*old_entry_p = last;

		/*
		 * XXX	For some error returns, want to
		 * XXX	skip to the next element.  Note
		 *	that INVALID_ADDRESS and
		 *	PROTECTION_FAILURE are handled above.
		 */

		return FALSE;
	}

	/*
	 *	Insert the copy into the new map
	 */

	FUNC1(new_map, last, copy);

	/*
	 *	Pick up the traversal at the end of
	 *	the copied region.
	 */

	FUNC4(old_map);
	start += entry_size;
	if (! FUNC5(old_map, start, &last)) {
		last = last->vme_next;
	} else {
		if (last->vme_start == start) {
			/*
			 * No need to clip here and we don't
			 * want to cause any unnecessary
			 * unnesting...
			 */
		} else {
			FUNC0(old_map, last, start);
		}
	}
	*old_entry_p = last;

	return TRUE;
}