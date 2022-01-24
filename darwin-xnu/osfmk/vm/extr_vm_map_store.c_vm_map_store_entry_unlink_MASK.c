#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_map_t ;
typedef  TYPE_2__* vm_map_entry_t ;
struct TYPE_13__ {scalar_t__ vme_start; struct TYPE_13__* vme_prev; } ;
struct TYPE_12__ {scalar_t__ holelistenabled; int /*<<< orphan*/  hdr; TYPE_2__* first_free; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  VM_MAP_ENTRY_DELETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 

void
FUNC5( vm_map_t map, vm_map_entry_t entry)
{
	vm_map_t VMEU_map;
	vm_map_entry_t VMEU_entry = NULL;
	vm_map_entry_t VMEU_first_free = NULL;
	VMEU_map = (map);
	VMEU_entry = (entry);

	if (map->holelistenabled == FALSE) {
		if (VMEU_entry->vme_start <= VMEU_map->first_free->vme_start){
			VMEU_first_free = VMEU_entry->vme_prev;
		} else	{
			VMEU_first_free = VMEU_map->first_free;
		}
	}
	FUNC0(&VMEU_map->hdr, VMEU_entry);
	FUNC4( map, entry, VM_MAP_ENTRY_DELETE);
	FUNC1(VMEU_map, VMEU_first_free);
#ifdef VM_MAP_STORE_USE_RB
	if (vm_map_store_has_RB_support( &VMEU_map->hdr )) {
		update_first_free_rb(VMEU_map, entry, FALSE);
	}
#endif
}