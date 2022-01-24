#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  size_t mach_port_index_t ;
typedef  TYPE_1__* ipc_space_t ;
typedef  TYPE_2__* ipc_entry_t ;
typedef  size_t ipc_entry_num_t ;
struct TYPE_9__ {scalar_t__ ie_object; scalar_t__ ie_request; int ie_bits; size_t ie_next; } ;
struct TYPE_8__ {size_t is_table_size; int /*<<< orphan*/  is_table_free; TYPE_2__* is_table; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int IE_BITS_GEN_MASK ; 
 int IE_BITS_ROLL_MASK ; 
 scalar_t__ IE_REQ_NONE ; 
 scalar_t__ IO_NULL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void
FUNC7(
	ipc_space_t		space,
	mach_port_name_t	name,
	ipc_entry_t		entry)
{
	ipc_entry_t table;
	ipc_entry_num_t size;
	mach_port_index_t index;

	FUNC3(FUNC5(space));
	FUNC3(entry->ie_object == IO_NULL);
	FUNC3(entry->ie_request == IE_REQ_NONE);

#if 1
	if (entry->ie_request != IE_REQ_NONE)
		FUNC6("ipc_entry_dealloc()\n");
#endif

	index = FUNC2(name);
	table = space->is_table;
	size = space->is_table_size;

	if ((index < size) && (entry == &table[index])) {
		FUNC3(FUNC0(entry->ie_bits) == FUNC1(name));
		entry->ie_bits &= (IE_BITS_GEN_MASK | IE_BITS_ROLL_MASK);
		entry->ie_next = table->ie_next;
		table->ie_next = index;
		space->is_table_free++;
	} else {
		/*
		 * Nothing to do.  The entry does not match
		 * so there is nothing to deallocate.
		 */
                FUNC3(index < size);
		FUNC3(entry == &table[index]);
		FUNC3(FUNC0(entry->ie_bits) == FUNC1(name));
	}
	FUNC4(space, name, entry);
}