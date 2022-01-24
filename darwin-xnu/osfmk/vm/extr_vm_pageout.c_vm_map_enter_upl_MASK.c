#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_39__   TYPE_4__ ;
typedef  struct TYPE_38__   TYPE_3__ ;
typedef  struct TYPE_37__   TYPE_2__ ;
typedef  struct TYPE_36__   TYPE_1__ ;

/* Type definitions */
typedef  int* wpl_array_t ;
typedef  TYPE_1__* vm_page_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  TYPE_2__* vm_object_t ;
typedef  int vm_object_offset_t ;
typedef  TYPE_3__* vm_map_t ;
typedef  int vm_map_size_t ;
typedef  scalar_t__ vm_map_offset_t ;
typedef  TYPE_4__* upl_t ;
typedef  int /*<<< orphan*/  upl_size_t ;
typedef  int /*<<< orphan*/  upl_page_info_t ;
typedef  scalar_t__ upl_offset_t ;
struct upl {int dummy; } ;
typedef  scalar_t__ kern_return_t ;
struct TYPE_39__ {int flags; int size; int offset; scalar_t__ kaddr; int /*<<< orphan*/  ref_count; TYPE_2__* map_object; } ;
struct TYPE_38__ {scalar_t__ pmap; } ;
struct TYPE_37__ {int vo_shadow_offset; int paging_offset; int /*<<< orphan*/  wimg_bits; int /*<<< orphan*/  copy_strategy; void* can_persist; void* pageout; struct TYPE_37__* shadow; scalar_t__ phys_contiguous; } ;
struct TYPE_36__ {int vmp_fictitious; void* vmp_pmapped; void* vmp_absent; void* vmp_busy; int /*<<< orphan*/  vmp_wanted; void* vmp_free_when_done; void* vmp_private; } ;

/* Variables and functions */
 void* FALSE ; 
 scalar_t__ KERN_FAILURE ; 
 scalar_t__ KERN_INVALID_ARGUMENT ; 
 scalar_t__ KERN_SUCCESS ; 
 int MAX_VECTOR_UPL_ELEMENTS ; 
 int /*<<< orphan*/  MEMORY_OBJECT_COPY_NONE ; 
 int PAGE_SIZE ; 
 int PAGE_SIZE_64 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,scalar_t__) ; 
 void* TRUE ; 
 int UPL_DEVICE_MEMORY ; 
 int UPL_HAS_BUSY ; 
 int UPL_INTERNAL ; 
 int UPL_IO_WIRE ; 
 TYPE_4__* UPL_NULL ; 
 int UPL_PAGE_LIST_MAPPED ; 
 int UPL_SHADOWED ; 
 int /*<<< orphan*/  VM_FLAGS_ANYWHERE ; 
 int /*<<< orphan*/  VM_FLAGS_FIXED ; 
 int /*<<< orphan*/  VM_INHERIT_DEFAULT ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_NONE ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_OSFMK ; 
 int /*<<< orphan*/  VM_MAP_KERNEL_FLAGS_NONE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__* VM_PAGE_NULL ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VM_PROT_ALL ; 
 int /*<<< orphan*/  VM_PROT_DEFAULT ; 
 int /*<<< orphan*/  VM_PROT_NONE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 scalar_t__ kernel_pmap ; 
 scalar_t__ FUNC6 (TYPE_3__*,scalar_t__*,int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,TYPE_4__*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,TYPE_3__*,scalar_t__) ; 
 TYPE_4__* FUNC13 (TYPE_4__*,int) ; 
 scalar_t__ FUNC14 (TYPE_3__*,scalar_t__*,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 TYPE_1__* FUNC22 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 

kern_return_t
FUNC25(
	vm_map_t		map,
	upl_t			upl,
	vm_map_offset_t		*dst_addr)
{
	vm_map_size_t	 	size;
	vm_object_offset_t 	offset;
	vm_map_offset_t		addr;
	vm_page_t		m;
	kern_return_t		kr;
	int			isVectorUPL = 0, curr_upl=0;
	upl_t			vector_upl = NULL;
	vm_offset_t		vector_upl_dst_addr = 0;
	vm_map_t		vector_upl_submap = NULL;
	upl_offset_t 		subupl_offset = 0;
	upl_size_t		subupl_size = 0;

	if (upl == UPL_NULL)
		return KERN_INVALID_ARGUMENT;

	if((isVectorUPL = FUNC11(upl))) {
		int mapped=0,valid_upls=0;
		vector_upl = upl;

		FUNC8(vector_upl);
		for(curr_upl=0; curr_upl < MAX_VECTOR_UPL_ELEMENTS; curr_upl++) {
			upl =  FUNC13(vector_upl, curr_upl );
			if(upl == NULL)
				continue;
			valid_upls++;
			if (UPL_PAGE_LIST_MAPPED & upl->flags)
				mapped++;
		}

		if(mapped) {
			if(mapped != valid_upls)
				FUNC7("Only %d of the %d sub-upls within the Vector UPL are alread mapped\n", mapped, valid_upls);
			else {
				FUNC9(vector_upl);
				return KERN_FAILURE;
			}
		}

		kr = FUNC6(map, &vector_upl_dst_addr, vector_upl->size, FALSE,
			            VM_FLAGS_ANYWHERE, VM_MAP_KERNEL_FLAGS_NONE, VM_KERN_MEMORY_NONE,
			            &vector_upl_submap);
		if( kr != KERN_SUCCESS )
			FUNC7("Vector UPL submap allocation failed\n");
		map = vector_upl_submap;
		FUNC12(vector_upl, vector_upl_submap, vector_upl_dst_addr);
		curr_upl=0;
	}
	else
		FUNC8(upl);

process_upl_to_enter:
	if(isVectorUPL){
		if(curr_upl == MAX_VECTOR_UPL_ELEMENTS) {
			*dst_addr = vector_upl_dst_addr;
			FUNC9(vector_upl);
			return KERN_SUCCESS;
		}
		upl =  FUNC13(vector_upl, curr_upl++ );
		if(upl == NULL)
			goto process_upl_to_enter;

		FUNC10(vector_upl, upl, &subupl_offset, &subupl_size);
		*dst_addr = (vm_map_offset_t)(vector_upl_dst_addr + (vm_map_offset_t)subupl_offset);
	} else {
		/*
		 * check to see if already mapped
		 */
		if (UPL_PAGE_LIST_MAPPED & upl->flags) {
			FUNC9(upl);
			return KERN_FAILURE;
		}
	}
	if ((!(upl->flags & UPL_SHADOWED)) &&
	    ((upl->flags & UPL_HAS_BUSY) ||
	     !((upl->flags & (UPL_DEVICE_MEMORY | UPL_IO_WIRE)) || (upl->map_object->phys_contiguous)))) {

		vm_object_t 		object;
		vm_page_t		alias_page;
		vm_object_offset_t	new_offset;
		unsigned int		pg_num;
		wpl_array_t 		lite_list;

		if (upl->flags & UPL_INTERNAL) {
			lite_list = (wpl_array_t)
				((((uintptr_t)upl) + sizeof(struct upl))
				 + ((upl->size/PAGE_SIZE) * sizeof(upl_page_info_t)));
		} else {
		        lite_list = (wpl_array_t)(((uintptr_t)upl) + sizeof(struct upl));
		}
		object = upl->map_object;
		upl->map_object = FUNC15(upl->size);

		FUNC17(upl->map_object);

		upl->map_object->shadow = object;
		upl->map_object->pageout = TRUE;
		upl->map_object->can_persist = FALSE;
		upl->map_object->copy_strategy = MEMORY_OBJECT_COPY_NONE;
		upl->map_object->vo_shadow_offset = upl->offset - object->paging_offset;
		upl->map_object->wimg_bits = object->wimg_bits;
		offset = upl->map_object->vo_shadow_offset;
		new_offset = 0;
		size = upl->size;

		upl->flags |= UPL_SHADOWED;

		while (size) {
			pg_num = (unsigned int) (new_offset / PAGE_SIZE);
			FUNC4(pg_num == new_offset / PAGE_SIZE);

			if (lite_list[pg_num>>5] & (1 << (pg_num & 31))) {

				FUNC2(alias_page);

				FUNC17(object);

				m = FUNC22(object, offset);
				if (m == VM_PAGE_NULL) {
				        FUNC7("vm_upl_map: page missing\n");
				}

				/*
				 * Convert the fictitious page to a private
				 * shadow of the real page.
				 */
				FUNC4(alias_page->vmp_fictitious);
				alias_page->vmp_fictitious = FALSE;
				alias_page->vmp_private = TRUE;
				alias_page->vmp_free_when_done = TRUE;
				/*
				 * since m is a page in the upl it must
				 * already be wired or BUSY, so it's
				 * safe to assign the underlying physical
				 * page to the alias
				 */
				FUNC3(alias_page, FUNC1(m));

			        FUNC19(object);

				FUNC21();
				FUNC24(alias_page, VM_KERN_MEMORY_NONE, TRUE);
				FUNC23();

				FUNC20(alias_page, upl->map_object, new_offset, VM_KERN_MEMORY_NONE);

				FUNC4(!alias_page->vmp_wanted);
				alias_page->vmp_busy = FALSE;
				alias_page->vmp_absent = FALSE;
			}
			size -= PAGE_SIZE;
			offset += PAGE_SIZE_64;
			new_offset += PAGE_SIZE_64;
		}
		FUNC19(upl->map_object);
	}
	if (upl->flags & UPL_SHADOWED)
	        offset = 0;
	else
	        offset = upl->offset - upl->map_object->paging_offset;

	size = upl->size;

	FUNC18(upl->map_object);

	if(!isVectorUPL) {
		*dst_addr = 0;
		/*
	 	* NEED A UPL_MAP ALIAS
	 	*/
		kr = FUNC14(map, dst_addr, (vm_map_size_t)size, (vm_map_offset_t) 0,
				  VM_FLAGS_ANYWHERE, VM_MAP_KERNEL_FLAGS_NONE, VM_KERN_MEMORY_OSFMK,
				  upl->map_object, offset, FALSE,
				  VM_PROT_DEFAULT, VM_PROT_ALL, VM_INHERIT_DEFAULT);

		if (kr != KERN_SUCCESS) {
			FUNC16(upl->map_object);
			FUNC9(upl);
			return(kr);
		}
	}
	else {
		kr = FUNC14(map, dst_addr, (vm_map_size_t)size, (vm_map_offset_t) 0,
				  VM_FLAGS_FIXED, VM_MAP_KERNEL_FLAGS_NONE, VM_KERN_MEMORY_OSFMK,
				  upl->map_object, offset, FALSE,
				  VM_PROT_DEFAULT, VM_PROT_ALL, VM_INHERIT_DEFAULT);
		if(kr)
			FUNC7("vm_map_enter failed for a Vector UPL\n");
	}
	FUNC17(upl->map_object);

	for (addr = *dst_addr; size > 0; size -= PAGE_SIZE, addr += PAGE_SIZE) {
		m = FUNC22(upl->map_object, offset);

		if (m) {
			m->vmp_pmapped = TRUE;

			/* CODE SIGNING ENFORCEMENT: page has been wpmapped,
			 * but only in kernel space. If this was on a user map,
			 * we'd have to set the wpmapped bit. */
			/* m->vmp_wpmapped = TRUE; */
			FUNC4(map->pmap == kernel_pmap);

			FUNC0(map->pmap, addr, m, VM_PROT_DEFAULT, VM_PROT_NONE, 0, TRUE, kr);

			FUNC4(kr == KERN_SUCCESS);
#if KASAN
			kasan_notify_address(addr, PAGE_SIZE_64);
#endif
		}
		offset += PAGE_SIZE_64;
	}
	FUNC19(upl->map_object);

	/*
	 * hold a reference for the mapping
	 */
	upl->ref_count++;
	upl->flags |= UPL_PAGE_LIST_MAPPED;
	upl->kaddr = (vm_offset_t) *dst_addr;
	FUNC4(upl->kaddr == *dst_addr);

	if(isVectorUPL)
		goto process_upl_to_enter;

	FUNC9(upl);

	return KERN_SUCCESS;
}