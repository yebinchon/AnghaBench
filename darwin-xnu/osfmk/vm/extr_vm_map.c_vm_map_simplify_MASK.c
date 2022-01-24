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
typedef  int /*<<< orphan*/  vm_map_t ;
typedef  int /*<<< orphan*/  vm_map_offset_t ;
typedef  TYPE_1__* vm_map_entry_t ;
struct TYPE_4__ {struct TYPE_4__* vme_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  c_vm_map_simplify_called ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(
	vm_map_t	map,
	vm_map_offset_t	start)
{
	vm_map_entry_t	this_entry;

	FUNC1(map);
	if (FUNC2(map, start, &this_entry)) {
		FUNC3(map, this_entry);
		FUNC3(map, this_entry->vme_next);
	}
	FUNC0(c_vm_map_simplify_called++);
	FUNC4(map);
}