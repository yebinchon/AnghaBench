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
typedef  TYPE_1__* zone_t ;
typedef  int vm_size_t ;
typedef  int vm_offset_t ;
struct TYPE_4__ {int elem_size; int cur_size; int /*<<< orphan*/  count; int /*<<< orphan*/  tags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MAX_ENTROPY_PER_ZCRAM ; 
 int ZONE_CHUNK_MAXELEMENTS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ leak_scan_debug_flag ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  zone_bool_gen ; 

__attribute__((used)) static void
FUNC4(
			zone_t 		zone,
			vm_offset_t 	newmem,
			vm_offset_t 	first_element_offset,
			int 		element_count,
			unsigned int 	*entropy_buffer)
{
	vm_offset_t 	last_element_offset;
	vm_offset_t 	element_addr;
	vm_size_t       elem_size;
	int 		index;

	FUNC1(element_count && element_count <= ZONE_CHUNK_MAXELEMENTS);
	elem_size = zone->elem_size;
	last_element_offset = first_element_offset + ((element_count * elem_size) - elem_size);
	for (index = 0; index < element_count; index++) {
		FUNC1(first_element_offset <= last_element_offset);
		if (
#if DEBUG || DEVELOPMENT
		leak_scan_debug_flag || __improbable(zone->tags) ||
#endif /* DEBUG || DEVELOPMENT */
	        FUNC3(&zone_bool_gen, entropy_buffer, MAX_ENTROPY_PER_ZCRAM, 1)) {
			element_addr = newmem + first_element_offset;
			first_element_offset += elem_size;
		} else {
			element_addr = newmem + last_element_offset;
			last_element_offset -= elem_size;
		}
		if (element_addr != (vm_offset_t)zone) {
			zone->count++;  /* compensate for free_to_zone */
			FUNC2(zone, element_addr, FALSE);
		}
		zone->cur_size += elem_size;
	}
}