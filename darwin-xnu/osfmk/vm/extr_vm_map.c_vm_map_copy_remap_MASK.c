#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  void* vm_prot_t ;
typedef  TYPE_2__* vm_map_t ;
typedef  scalar_t__ vm_map_offset_t ;
typedef  TYPE_3__* vm_map_entry_t ;
typedef  int /*<<< orphan*/  vm_map_copy_t ;
typedef  int /*<<< orphan*/  vm_inherit_t ;
struct TYPE_19__ {int /*<<< orphan*/  use_pmap; scalar_t__ is_sub_map; int /*<<< orphan*/  behavior; void* max_protection; void* protection; int /*<<< orphan*/  inheritance; int /*<<< orphan*/  vme_end; int /*<<< orphan*/  vme_start; struct TYPE_19__* vme_next; } ;
struct TYPE_17__ {int /*<<< orphan*/  entries_pageable; } ;
struct TYPE_18__ {TYPE_1__ hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  VM_BEHAVIOR_DEFAULT ; 
 int /*<<< orphan*/  VM_MAP_KERNEL_FLAGS_NONE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_3__*) ; 
 TYPE_3__* FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

void
FUNC12(
	vm_map_t	map,
	vm_map_entry_t	where,
	vm_map_copy_t	copy,
	vm_map_offset_t	adjustment,
	vm_prot_t	cur_prot,
	vm_prot_t	max_prot,
	vm_inherit_t	inheritance)
{
	vm_map_entry_t	copy_entry, new_entry;

	for (copy_entry = FUNC3(copy);
	     copy_entry != FUNC4(copy);
	     copy_entry = copy_entry->vme_next) {
		/* get a new VM map entry for the map */
		new_entry = FUNC6(map,
						!map->hdr.entries_pageable);
		/* copy the "copy entry" to the new entry */
		FUNC5(new_entry, copy_entry);
		/* adjust "start" and "end" */
		new_entry->vme_start += adjustment;
		new_entry->vme_end += adjustment;
		/* clear some attributes */
		new_entry->inheritance = inheritance;
		new_entry->protection = cur_prot;
		new_entry->max_protection = max_prot;
		new_entry->behavior = VM_BEHAVIOR_DEFAULT;
		/* take an extra reference on the entry's "object" */
		if (new_entry->is_sub_map) {
			FUNC2(!new_entry->use_pmap); /* not nested */
			FUNC7(FUNC1(new_entry));
			FUNC8(FUNC1(new_entry));
			FUNC10(FUNC1(new_entry));
		} else {
			FUNC11(FUNC0(new_entry));
		}
		/* insert the new entry in the map */
		FUNC9(map, where, new_entry,
					VM_MAP_KERNEL_FLAGS_NONE);
		/* continue inserting the "copy entries" after the new entry */
		where = new_entry;
	}
}