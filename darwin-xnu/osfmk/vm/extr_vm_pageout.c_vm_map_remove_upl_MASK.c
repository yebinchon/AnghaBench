#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  vm_map_t ;
typedef  scalar_t__ vm_address_t ;
typedef  TYPE_1__* upl_t ;
typedef  scalar_t__ upl_size_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_10__ {int flags; int ref_count; scalar_t__ kaddr; scalar_t__ size; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int MAX_VECTOR_UPL_ELEMENTS ; 
 TYPE_1__* UPL_NULL ; 
 int UPL_PAGE_LIST_MAPPED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_MAP_REMOVE_NO_FLAGS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC12(
	vm_map_t	map,
	upl_t		upl)
{
	vm_address_t	addr;
	upl_size_t	size;
	int		isVectorUPL = 0, curr_upl = 0;
	upl_t		vector_upl = NULL;

	if (upl == UPL_NULL)
		return KERN_INVALID_ARGUMENT;

	if((isVectorUPL = FUNC6(upl))) {
		int 	unmapped=0, valid_upls=0;
		vector_upl = upl;
		FUNC3(vector_upl);
		for(curr_upl=0; curr_upl < MAX_VECTOR_UPL_ELEMENTS; curr_upl++) {
			upl =  FUNC7(vector_upl, curr_upl );
			if(upl == NULL)
				continue;
			valid_upls++;
			if (!(UPL_PAGE_LIST_MAPPED & upl->flags))
				unmapped++;
		}

		if(unmapped) {
			if(unmapped != valid_upls)
				FUNC2("%d of the %d sub-upls within the Vector UPL is/are not mapped\n", unmapped, valid_upls);
			else {
				FUNC4(vector_upl);
				return KERN_FAILURE;
			}
		}
		curr_upl=0;
	}
	else
		FUNC3(upl);

process_upl_to_remove:
	if(isVectorUPL) {
		if(curr_upl == MAX_VECTOR_UPL_ELEMENTS) {
			vm_map_t v_upl_submap;
			vm_offset_t v_upl_submap_dst_addr;
			FUNC5(vector_upl, &v_upl_submap, &v_upl_submap_dst_addr);

			FUNC9(map, v_upl_submap_dst_addr, v_upl_submap_dst_addr + vector_upl->size, VM_MAP_REMOVE_NO_FLAGS);
			FUNC8(v_upl_submap);
			FUNC4(vector_upl);
			return KERN_SUCCESS;
		}

		upl =  FUNC7(vector_upl, curr_upl++ );
		if(upl == NULL)
			goto process_upl_to_remove;
	}

	if (upl->flags & UPL_PAGE_LIST_MAPPED) {
		addr = upl->kaddr;
		size = upl->size;

		FUNC1(upl->ref_count > 1);
		upl->ref_count--;		/* removing mapping ref */

		upl->flags &= ~UPL_PAGE_LIST_MAPPED;
		upl->kaddr = (vm_offset_t) 0;

		if(!isVectorUPL) {
			FUNC4(upl);

			FUNC9(
				map,
				FUNC11(addr,
						  FUNC0(map)),
				FUNC10(addr + size,
						  FUNC0(map)),
				VM_MAP_REMOVE_NO_FLAGS);
			return KERN_SUCCESS;
		}
		else {
			/*
			* If it's a Vectored UPL, we'll be removing the entire
			* submap anyways, so no need to remove individual UPL
			* element mappings from within the submap
			*/
			goto process_upl_to_remove;
		}
	}
	FUNC4(upl);

	return KERN_FAILURE;
}