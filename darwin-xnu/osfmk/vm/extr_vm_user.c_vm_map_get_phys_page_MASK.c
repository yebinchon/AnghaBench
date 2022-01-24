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
typedef  scalar_t__ vm_page_t ;
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  TYPE_1__* vm_object_t ;
typedef  int vm_object_offset_t ;
typedef  int /*<<< orphan*/  vm_map_t ;
typedef  int vm_map_offset_t ;
typedef  TYPE_2__* vm_map_entry_t ;
typedef  scalar_t__ ppnum_t ;
struct TYPE_13__ {int vme_start; scalar_t__ is_sub_map; } ;
struct TYPE_12__ {int vo_shadow_offset; struct TYPE_12__* shadow; scalar_t__ phys_contiguous; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  PAGE_MASK ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 scalar_t__ TRUE ; 
 TYPE_1__* FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_NONE ; 
 TYPE_1__* VM_OBJECT_NULL ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ VM_PAGE_NULL ; 
 int /*<<< orphan*/  VM_PROT_NONE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,TYPE_2__**) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (TYPE_1__*,int) ; 

ppnum_t
FUNC12(
	vm_map_t		map,
	vm_offset_t		addr)
{
	vm_object_offset_t	offset;
	vm_object_t		object;
	vm_map_offset_t 	map_offset;
	vm_map_entry_t		entry;
	ppnum_t			phys_page = 0;

	map_offset = FUNC7(addr, PAGE_MASK);

	FUNC5(map);
	while (FUNC6(map, map_offset, &entry)) {

		if (FUNC0(entry) == VM_OBJECT_NULL) {
			FUNC8(map);
			return (ppnum_t) 0;
		}
		if (entry->is_sub_map) {
			vm_map_t	old_map;
			FUNC5(FUNC2(entry));
			old_map = map;
			map = FUNC2(entry);
			map_offset = (FUNC1(entry) +
				      (map_offset - entry->vme_start));
			FUNC8(old_map);
			continue;
		}
		if (FUNC0(entry)->phys_contiguous) {
			/* These are  not standard pageable memory mappings */
			/* If they are not present in the object they will  */
			/* have to be picked up from the pager through the  */
			/* fault mechanism.  */
			if (FUNC0(entry)->vo_shadow_offset == 0) {
				/* need to call vm_fault */
				FUNC8(map);
				FUNC4(map, map_offset, VM_PROT_NONE, 
					FALSE /* change_wiring */, VM_KERN_MEMORY_NONE,
					THREAD_UNINT, NULL, 0);
				FUNC5(map);
				continue;
			}
			offset = (FUNC1(entry) +
				  (map_offset - entry->vme_start));
			phys_page = (ppnum_t)
				((FUNC0(entry)->vo_shadow_offset 
				  + offset) >> PAGE_SHIFT);
			break;
			
		}
		offset = (FUNC1(entry) + (map_offset - entry->vme_start));
		object = FUNC0(entry);
		FUNC9(object);
		while (TRUE) {
			vm_page_t dst_page = FUNC11(object,offset);
	                if(dst_page == VM_PAGE_NULL) {
				if(object->shadow) {
					vm_object_t old_object;
					FUNC9(object->shadow);
					old_object = object;
					offset = offset + object->vo_shadow_offset;
					object = object->shadow;
					FUNC10(old_object);
				} else {
					FUNC10(object);
					break;
				}
			} else {
				phys_page = (ppnum_t)(FUNC3(dst_page));
				FUNC10(object);
				break;
			}
		}
		break;

	} 

	FUNC8(map);
	return phys_page;
}