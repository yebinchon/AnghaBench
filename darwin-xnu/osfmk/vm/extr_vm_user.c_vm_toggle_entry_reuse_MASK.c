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
typedef  TYPE_1__* vm_map_t ;
typedef  TYPE_2__* vm_map_entry_t ;
struct TYPE_12__ {int /*<<< orphan*/  vme_end; } ;
struct TYPE_11__ {int disable_vmentry_reuse; TYPE_2__* first_free; int /*<<< orphan*/  highest_entry_end; int /*<<< orphan*/  is_nested_map; } ;

/* Variables and functions */
 int FALSE ; 
 int KERN_INVALID_ARGUMENT ; 
 int KERN_SUCCESS ; 
 int TRUE ; 
 int VM_TOGGLE_CLEAR ; 
 int VM_TOGGLE_GETVALUE ; 
 int VM_TOGGLE_SET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_2__* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

int
FUNC8(int toggle, int *old_value)
{
	vm_map_t map = FUNC2();
	
	FUNC1(!map->is_nested_map);
	if(toggle == VM_TOGGLE_GETVALUE && old_value != NULL){
		*old_value = map->disable_vmentry_reuse;
	} else if(toggle == VM_TOGGLE_SET){
		vm_map_entry_t map_to_entry;

		FUNC4(map);
		FUNC3(map);
		map->disable_vmentry_reuse = TRUE;
		FUNC0(map_to_entry = FUNC6(map));
		if (map->first_free == map_to_entry) {
			map->highest_entry_end = FUNC5(map);
		} else {
			map->highest_entry_end = map->first_free->vme_end;
		}
		FUNC7(map);
	} else if (toggle == VM_TOGGLE_CLEAR){
		FUNC4(map);
		map->disable_vmentry_reuse = FALSE;
		FUNC7(map);
	} else
		return KERN_INVALID_ARGUMENT;

	return KERN_SUCCESS;
}