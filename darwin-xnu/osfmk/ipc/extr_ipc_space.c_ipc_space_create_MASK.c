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
struct ipc_entry {int dummy; } ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  TYPE_1__* ipc_table_size_t ;
typedef  TYPE_2__* ipc_space_t ;
typedef  scalar_t__ ipc_entry_t ;
typedef  int ipc_entry_num_t ;
struct TYPE_12__ {int is_bits; int is_table_size; int is_table_free; int is_low_mod; int /*<<< orphan*/  is_node_id; scalar_t__ is_high_mod; int /*<<< orphan*/ * is_task; TYPE_1__* is_table_next; scalar_t__ is_table; int /*<<< orphan*/  bool_gen; scalar_t__ is_entropy; } ;
struct TYPE_11__ {int its_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  HOST_LOCAL_NODE ; 
 scalar_t__ IE_NULL ; 
 TYPE_2__* IS_NULL ; 
 int /*<<< orphan*/  KERN_RESOURCE_SHORTAGE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

kern_return_t
FUNC7(
	ipc_table_size_t	initial,
	ipc_space_t		*spacep)
{
	ipc_space_t space;
	ipc_entry_t table;
	ipc_entry_num_t new_size;

	space = FUNC1();
	if (space == IS_NULL)
		return KERN_RESOURCE_SHORTAGE;

	table = FUNC4(initial);
	if (table == IE_NULL) {
		FUNC2(space);
		return KERN_RESOURCE_SHORTAGE;
	}

	new_size = initial->its_size;
	FUNC5((void *) table, 0, new_size * sizeof(struct ipc_entry));

	/* Set to 0 so entropy pool refills */
	FUNC5((void *) space->is_entropy, 0, sizeof(space->is_entropy));

	FUNC6(&space->bool_gen);
	FUNC0(space, table, 0, new_size);

	FUNC3(space);
	space->is_bits = 2; /* 2 refs, active, not growing */
	space->is_table_size = new_size;
	space->is_table_free = new_size - 1;
	space->is_table = table;
	space->is_table_next = initial+1;
	space->is_task = NULL;
	space->is_low_mod = new_size;
	space->is_high_mod = 0;
	space->is_node_id = HOST_LOCAL_NODE; /* HOST_LOCAL_NODE, except proxy spaces */

	*spacep = space;
	return KERN_SUCCESS;
}