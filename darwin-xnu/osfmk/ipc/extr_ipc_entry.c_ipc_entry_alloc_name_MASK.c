#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  scalar_t__ mach_port_index_t ;
typedef  scalar_t__ mach_port_gen_t ;
typedef  scalar_t__ kern_return_t ;
typedef  TYPE_1__* ipc_space_t ;
typedef  TYPE_2__* ipc_entry_t ;
struct TYPE_12__ {scalar_t__ ie_next; scalar_t__ ie_object; int /*<<< orphan*/  ie_request; scalar_t__ ie_bits; } ;
struct TYPE_11__ {scalar_t__ is_table_size; int /*<<< orphan*/  is_table_free; TYPE_2__* is_table; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  IE_REQ_NONE ; 
 scalar_t__ IO_NULL ; 
 scalar_t__ KERN_FAILURE ; 
 scalar_t__ KERN_INVALID_TASK ; 
 scalar_t__ KERN_NO_SPACE ; 
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 

kern_return_t
FUNC13(
	ipc_space_t		space,
	mach_port_name_t	name,
	ipc_entry_t		*entryp)
{
	mach_port_index_t index = FUNC3(name);
	mach_port_gen_t gen = FUNC2(name);

	if (index > FUNC9())
		return KERN_NO_SPACE;

	FUNC6(FUNC5(name));


	FUNC11(space);

	for (;;) {
		ipc_entry_t entry;

		if (!FUNC10(space)) {
			FUNC12(space);
			return KERN_INVALID_TASK;
		}

		/*
		 *	If we are under the table cutoff,
		 *	there are usually four cases:
		 *		1) The entry is reserved (index 0)
		 *		2) The entry is inuse, for the same name
		 *		3) The entry is inuse, for a different name
		 *		4) The entry is free
		 *	For a task with a "fast" IPC space, we disallow
		 *	cases 1) and 3), because ports cannot be renamed.
		 */
		if (index < space->is_table_size) {
			ipc_entry_t table = space->is_table;

			entry = &table[index];

			if (index == 0) {
				/* case #1 - the entry is reserved */
				FUNC6(!FUNC1(entry->ie_bits));
				FUNC6(!FUNC0(entry->ie_bits));
				FUNC12(space);				
				return KERN_FAILURE;
			} else if (FUNC1(entry->ie_bits)) {
				if (FUNC0(entry->ie_bits) == gen) {
					/* case #2 -- the entry is inuse, for the same name */
					*entryp = entry;
					return KERN_SUCCESS;
				} else {
					/* case #3 -- the entry is inuse, for a different name. */
					/* Collisions are not allowed */
					FUNC12(space);					
					return KERN_FAILURE;
				}
			} else {
				mach_port_index_t free_index, next_index;

				/*
				 *      case #4 -- the entry is free
				 *	Rip the entry out of the free list.
				 */

				for (free_index = 0;
				     (next_index = table[free_index].ie_next)
							!= index;
				     free_index = next_index)
					continue;

				table[free_index].ie_next =
					table[next_index].ie_next;
				space->is_table_free--;

				/* mark the previous entry modified - reconstructing the name */
				FUNC8(space, 
						   FUNC4(free_index, 
						   	FUNC0(table[free_index].ie_bits)),
						   &table[free_index]);

				entry->ie_bits = gen;
				entry->ie_request = IE_REQ_NONE;
				*entryp = entry;

				FUNC6(entry->ie_object == IO_NULL);
				return KERN_SUCCESS;
			}
		}

		/*
		 *      We grow the table so that the name
		 *	index fits in the array space.
		 *      Because the space will be unlocked,
		 *      we must restart.
		 */
                kern_return_t kr;
		kr = FUNC7(space, index + 1);
		FUNC6(kr != KERN_NO_SPACE);
		if (kr != KERN_SUCCESS) {
			/* space is unlocked */
			return kr;
		}
		continue;
	}
}