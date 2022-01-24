#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_map_entry_t ;
typedef  TYPE_2__* vm_map_copy_t ;
struct TYPE_18__ {int type; scalar_t__ size; scalar_t__ offset; int /*<<< orphan*/  cpy_object; } ;
struct TYPE_17__ {int /*<<< orphan*/  is_sub_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
#define  VM_MAP_COPY_ENTRY_LIST 130 
#define  VM_MAP_COPY_KERNEL_BUFFER 129 
 TYPE_2__* VM_MAP_COPY_NULL ; 
#define  VM_MAP_COPY_OBJECT 128 
 scalar_t__ cpy_kdata_hdr_sz ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ msg_ool_size_small ; 
 int /*<<< orphan*/  FUNC3 (char*,long long,long long) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*) ; 
 TYPE_1__* FUNC6 (TYPE_2__*) ; 
 TYPE_1__* FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  vm_map_copy_zone ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_2__*) ; 

void
FUNC11(
	vm_map_copy_t	copy)
{
	if (copy == VM_MAP_COPY_NULL)
		return;

	switch (copy->type) {
	case VM_MAP_COPY_ENTRY_LIST:
		while (FUNC6(copy) !=
		       FUNC7(copy)) {
			vm_map_entry_t	entry = FUNC6(copy);

			FUNC5(copy, entry);
			if (entry->is_sub_map) {
				FUNC8(FUNC1(entry));
			} else {
				FUNC9(FUNC0(entry));
			}
			FUNC4(copy, entry);
		}
		break;
        case VM_MAP_COPY_OBJECT:
		FUNC9(copy->cpy_object);
		break;
	case VM_MAP_COPY_KERNEL_BUFFER:

		/*
		 * The vm_map_copy_t and possibly the data buffer were
		 * allocated by a single call to kalloc(), i.e. the
		 * vm_map_copy_t was not allocated out of the zone.
		 */
		if (copy->size > msg_ool_size_small || copy->offset)
			FUNC3("Invalid vm_map_copy_t sz:%lld, ofst:%lld",
			      (long long)copy->size, (long long)copy->offset);
		FUNC2(copy, copy->size + cpy_kdata_hdr_sz);
		return;
	}
	FUNC10(vm_map_copy_zone, copy);
}