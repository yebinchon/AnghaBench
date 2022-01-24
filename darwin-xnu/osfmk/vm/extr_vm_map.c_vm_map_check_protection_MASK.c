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
typedef  int vm_prot_t ;
typedef  int /*<<< orphan*/  vm_map_t ;
typedef  scalar_t__ vm_map_offset_t ;
typedef  TYPE_1__* vm_map_entry_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_4__ {scalar_t__ vme_start; int protection; scalar_t__ vme_end; struct TYPE_4__* vme_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,TYPE_1__**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

boolean_t
FUNC6(vm_map_t map, vm_map_offset_t start,
			vm_map_offset_t end, vm_prot_t protection)
{
	vm_map_entry_t entry;
	vm_map_entry_t tmp_entry;

	FUNC0(map);

	if (start < FUNC3(map) || end > FUNC2(map) || start > end)
	{
		FUNC5(map);
		return (FALSE);
	}

	if (!FUNC1(map, start, &tmp_entry)) {
		FUNC5(map);
		return(FALSE);
	}

	entry = tmp_entry;

	while (start < end) {
		if (entry == FUNC4(map)) {
			FUNC5(map);
			return(FALSE);
		}

		/*
		 *	No holes allowed!
		 */

		if (start < entry->vme_start) {
			FUNC5(map);
			return(FALSE);
		}

		/*
		 * Check protection associated with entry.
		 */

		if ((entry->protection & protection) != protection) {
			FUNC5(map);
			return(FALSE);
		}

		/* go to next entry */

		start = entry->vme_end;
		entry = entry->vme_next;
	}
	FUNC5(map);
	return(TRUE);
}