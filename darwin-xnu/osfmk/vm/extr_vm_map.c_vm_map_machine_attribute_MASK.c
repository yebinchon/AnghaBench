#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_page_t ;
typedef  TYPE_2__* vm_object_t ;
typedef  scalar_t__ vm_object_offset_t ;
typedef  TYPE_3__* vm_map_t ;
typedef  scalar_t__ vm_map_size_t ;
typedef  scalar_t__ vm_map_offset_t ;
typedef  TYPE_4__* vm_map_entry_t ;
typedef  int /*<<< orphan*/  vm_machine_attribute_val_t ;
typedef  scalar_t__ vm_machine_attribute_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_25__ {scalar_t__ vme_end; scalar_t__ vme_start; scalar_t__ is_sub_map; } ;
struct TYPE_24__ {int /*<<< orphan*/  pmap; } ;
struct TYPE_23__ {scalar_t__ vo_shadow_offset; struct TYPE_23__* shadow; } ;
struct TYPE_22__ {int /*<<< orphan*/  vmp_fictitious; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_INVALID_ADDRESS ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 scalar_t__ MATTR_CACHE ; 
 scalar_t__ PAGE_SIZE ; 
 TYPE_2__* FUNC0 (TYPE_4__*) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 TYPE_3__* FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (TYPE_3__*,scalar_t__,TYPE_4__**) ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 
 scalar_t__ FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 TYPE_1__* FUNC13 (TYPE_2__*,scalar_t__) ; 

kern_return_t
FUNC14(
	vm_map_t			map,
	vm_map_offset_t		start,
	vm_map_offset_t		end,
	vm_machine_attribute_t	attribute,
	vm_machine_attribute_val_t* value)		/* IN/OUT */
{
	kern_return_t	ret;
	vm_map_size_t sync_size;
	vm_map_entry_t entry;

	if (start < FUNC9(map) || end > FUNC8(map))
		return KERN_INVALID_ADDRESS;

	/* Figure how much memory we need to flush (in page increments) */
	sync_size = end - start;

	FUNC6(map);

	if (attribute != MATTR_CACHE) {
		/* If we don't have to find physical addresses, we */
		/* don't have to do an explicit traversal here.    */
		ret = FUNC4(map->pmap, start, end-start,
				     attribute, value);
		FUNC10(map);
		return ret;
	}

	ret = KERN_SUCCESS;										/* Assume it all worked */

	while(sync_size) {
		if (FUNC7(map, start, &entry)) {
			vm_map_size_t	sub_size;
			if((entry->vme_end - start) > sync_size) {
				sub_size = sync_size;
				sync_size = 0;
			} else {
				sub_size = entry->vme_end - start;
				sync_size -= sub_size;
			}
			if(entry->is_sub_map) {
				vm_map_offset_t sub_start;
				vm_map_offset_t sub_end;

				sub_start = (start - entry->vme_start)
					+ FUNC1(entry);
				sub_end = sub_start + sub_size;
				FUNC14(
					FUNC2(entry),
					sub_start,
					sub_end,
					attribute, value);
			} else {
				if (FUNC0(entry)) {
					vm_page_t		m;
					vm_object_t		object;
					vm_object_t		base_object;
					vm_object_t		last_object;
					vm_object_offset_t	offset;
					vm_object_offset_t	base_offset;
					vm_map_size_t		range;
					range = sub_size;
					offset = (start - entry->vme_start)
						+ FUNC1(entry);
					base_offset = offset;
					object = FUNC0(entry);
					base_object = object;
					last_object = NULL;

					FUNC11(object);

					while (range) {
						m = FUNC13(
							object, offset);

						if (m && !m->vmp_fictitious) {
						        ret =
								FUNC5(
									FUNC3(m),
									PAGE_SIZE,
									attribute, value);

						} else if (object->shadow) {
						        offset = offset + object->vo_shadow_offset;
							last_object = object;
							object = object->shadow;
							FUNC11(last_object->shadow);
							FUNC12(last_object);
							continue;
						}
						range -= PAGE_SIZE;

						if (base_object != object) {
						        FUNC12(object);
							FUNC11(base_object);
							object = base_object;
						}
						/* Bump to the next page */
						base_offset += PAGE_SIZE;
						offset = base_offset;
					}
					FUNC12(object);
				}
			}
			start += sub_size;
		} else {
			FUNC10(map);
			return KERN_FAILURE;
		}

	}

	FUNC10(map);

	return ret;
}