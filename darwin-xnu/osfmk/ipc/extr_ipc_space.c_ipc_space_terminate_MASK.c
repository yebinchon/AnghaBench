#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ mach_port_type_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  size_t mach_port_index_t ;
typedef  TYPE_1__* ipc_space_t ;
typedef  TYPE_2__* ipc_entry_t ;
typedef  size_t ipc_entry_num_t ;
struct TYPE_16__ {int /*<<< orphan*/  ie_bits; } ;
struct TYPE_15__ {size_t is_table_size; scalar_t__ is_table_free; scalar_t__ is_table_next; TYPE_2__* is_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* IS_NULL ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ MACH_PORT_TYPE_NONE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,TYPE_2__*) ; 

void
FUNC13(
	ipc_space_t	space)
{
	ipc_entry_t table;
	ipc_entry_num_t size;
	mach_port_index_t index;

	FUNC3(space != IS_NULL);

	FUNC9(space);
	if (!FUNC5(space)) {
		FUNC11(space);
		return;
	}
	FUNC7(space);

	/*
	 *	If somebody is trying to grow the table,
	 *	we must wait until they finish and figure
	 *	out the space died.
	 */
	while (FUNC6(space))
		FUNC10(space);

	FUNC11(space);


	/*
	 *	Now we can futz with it	unlocked.
	 */

	table = space->is_table;
	size = space->is_table_size;

	for (index = 0; index < size; index++) {
		ipc_entry_t entry = &table[index];
		mach_port_type_t type;

		type = FUNC1(entry->ie_bits);
		if (type != MACH_PORT_TYPE_NONE) {
			mach_port_name_t name;

			name = FUNC2(index,
					      FUNC0(entry->ie_bits));
			FUNC4(space, name, entry);
		}
	}

	FUNC12(space->is_table_next-1, table);
	space->is_table_size = 0;
	space->is_table_free = 0;

	/*
	 *	Because the space is now dead,
	 *	we must release the "active" reference for it.
	 *	Our caller still has his reference.
	 */
	FUNC8(space);
}