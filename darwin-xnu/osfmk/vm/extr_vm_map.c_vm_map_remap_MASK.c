#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_25__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_tag_t ;
typedef  int vm_prot_t ;
typedef  TYPE_2__* vm_map_t ;
typedef  scalar_t__ vm_map_size_t ;
typedef  scalar_t__ vm_map_offset_t ;
typedef  int /*<<< orphan*/  vm_map_kernel_flags_t ;
typedef  TYPE_3__* vm_map_entry_t ;
typedef  scalar_t__ vm_map_address_t ;
typedef  int /*<<< orphan*/  vm_inherit_t ;
struct TYPE_27__ {TYPE_3__* next; } ;
struct vm_map_header {TYPE_25__ links; } ;
struct pmap_cs_lookup_results {scalar_t__ region_size; scalar_t__ region_start; scalar_t__ base; struct pmap_cs_code_directory* region_cd_entry; } ;
struct pmap_cs_code_directory {int dummy; } ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_29__ {scalar_t__ vme_end; int /*<<< orphan*/  is_sub_map; int /*<<< orphan*/  map_aligned; int /*<<< orphan*/  vme_start; scalar_t__ vme_resilient_codesign; void* protection; void* max_protection; struct TYPE_29__* vme_next; } ;
struct TYPE_26__ {int /*<<< orphan*/  entries_pageable; } ;
struct TYPE_28__ {scalar_t__ disable_vmentry_reuse; scalar_t__ highest_entry_end; scalar_t__ wiring_required; int /*<<< orphan*/  pmap; int /*<<< orphan*/  size; int /*<<< orphan*/  is_nested_map; TYPE_1__ hdr; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_25__*) ; 
 scalar_t__ KERN_INVALID_ARGUMENT ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  PAGE_MASK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_3__*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int VM_FLAGS_RESILIENT_CODESIGN ; 
 int VM_FLAGS_RETURN_DATA_ADDR ; 
#define  VM_INHERIT_COPY 130 
#define  VM_INHERIT_NONE 129 
#define  VM_INHERIT_SHARE 128 
 int /*<<< orphan*/  VM_KERN_MEMORY_MLOCK ; 
 TYPE_3__* VM_MAP_ENTRY_NULL ; 
 TYPE_2__* VM_MAP_NULL ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int VM_PROT_EXECUTE ; 
 void* VM_PROT_READ ; 
 int /*<<< orphan*/  FUNC5 (struct vm_map_header*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (struct vm_map_header*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,struct pmap_cs_lookup_results*) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 scalar_t__ FUNC12 (TYPE_2__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,struct vm_map_header*,int*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (TYPE_2__*,scalar_t__*,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__**) ; 
 scalar_t__ FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 scalar_t__ FUNC18 (TYPE_2__*,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

kern_return_t
FUNC20(
	vm_map_t		target_map,
	vm_map_address_t	*address,
	vm_map_size_t		size,
	vm_map_offset_t		mask,
	int			flags,
	vm_map_kernel_flags_t	vmk_flags,
	vm_tag_t		tag,
	vm_map_t		src_map,
	vm_map_offset_t		memory_address,
	boolean_t		copy,
	vm_prot_t		*cur_protection,
	vm_prot_t		*max_protection,
	vm_inherit_t		inheritance)
{
	kern_return_t		result;
	vm_map_entry_t		entry;
	vm_map_entry_t		insp_entry = VM_MAP_ENTRY_NULL;
	vm_map_entry_t		new_entry;
	struct vm_map_header	map_header;
	vm_map_offset_t		offset_in_mapping;

	if (target_map == VM_MAP_NULL)
		return KERN_INVALID_ARGUMENT;

	switch (inheritance) {
	case VM_INHERIT_NONE:
	case VM_INHERIT_COPY:
	case VM_INHERIT_SHARE:
		if (size != 0 && src_map != VM_MAP_NULL)
			break;
		/*FALL THRU*/
	default:
		return KERN_INVALID_ARGUMENT;
	}

	/*
	 * If the user is requesting that we return the address of the
	 * first byte of the data (rather than the base of the page),
	 * then we use different rounding semantics: specifically,
	 * we assume that (memory_address, size) describes a region
	 * all of whose pages we must cover, rather than a base to be truncated
	 * down and a size to be added to that base.  So we figure out
	 * the highest page that the requested region includes and make
	 * sure that the size will cover it.
	 *
 	 * The key example we're worried about it is of the form:
	 *
	 * 		memory_address = 0x1ff0, size = 0x20
	 *
	 * With the old semantics, we round down the memory_address to 0x1000
	 * and round up the size to 0x1000, resulting in our covering *only*
	 * page 0x1000.  With the new semantics, we'd realize that the region covers
	 * 0x1ff0-0x2010, and compute a size of 0x2000.  Thus, we cover both page
	 * 0x1000 and page 0x2000 in the region we remap.
	 */
	if ((flags & VM_FLAGS_RETURN_DATA_ADDR) != 0) {
		offset_in_mapping = memory_address - FUNC16(memory_address, PAGE_MASK);
		size = FUNC14(memory_address + size - FUNC16(memory_address, PAGE_MASK), PAGE_MASK);
	} else {
		size = FUNC14(size, PAGE_MASK);
	}
	if (size == 0) {
		return KERN_INVALID_ARGUMENT;
	}

	result = FUNC12(src_map, memory_address,
				      size, copy, &map_header,
				      cur_protection,
				      max_protection,
				      inheritance,
				      target_map->hdr.entries_pageable,
				      src_map == target_map,
				      vmk_flags);

	if (result != KERN_SUCCESS) {
		return result;
	}

	/*
	 * Allocate/check a range of free virtual address
	 * space for the target
	 */
	*address = FUNC16(*address,
				     FUNC4(target_map));
	FUNC11(target_map);
	result = FUNC13(target_map, address, size,
					     mask, flags, vmk_flags, tag,
					     &insp_entry);

	for (entry = map_header.links.next;
	     entry != FUNC0(&map_header.links);
	     entry = new_entry) {
		new_entry = entry->vme_next;
		FUNC6(&map_header, entry);
		if (result == KERN_SUCCESS) {
			if (flags & VM_FLAGS_RESILIENT_CODESIGN) {
				/* no codesigning -> read-only access */
				entry->max_protection = VM_PROT_READ;
				entry->protection = VM_PROT_READ;
				entry->vme_resilient_codesign = TRUE;
			}
			entry->vme_start += *address;
			entry->vme_end += *address;
			FUNC7(!entry->map_aligned);
			FUNC15(target_map, insp_entry, entry,
						vmk_flags);
			insp_entry = entry;
		} else {
			if (!entry->is_sub_map) {
				FUNC19(FUNC2(entry));
			} else {
				FUNC10(FUNC3(entry));
			}
			FUNC5(&map_header, entry);
		}
	}

	if (flags & VM_FLAGS_RESILIENT_CODESIGN) {
		*cur_protection = VM_PROT_READ;
		*max_protection = VM_PROT_READ;
	}

	if( target_map->disable_vmentry_reuse == TRUE) {
		FUNC7(!target_map->is_nested_map);
		if( target_map->highest_entry_end < insp_entry->vme_end ){
			target_map->highest_entry_end = insp_entry->vme_end;
		}
	}

	if (result == KERN_SUCCESS) {
		target_map->size += size;
		FUNC1(target_map, insp_entry);

#if PMAP_CS
		if (*max_protection & VM_PROT_EXECUTE) {
			vm_map_address_t region_start = 0, region_size = 0;
			struct pmap_cs_code_directory *region_cd = NULL;
			vm_map_address_t base = 0;
			struct pmap_cs_lookup_results results = {};
			vm_map_size_t page_addr = vm_map_trunc_page(memory_address, PAGE_MASK);
			vm_map_size_t assoc_size = vm_map_round_page(memory_address + size - page_addr, PAGE_MASK);

			pmap_cs_lookup(src_map->pmap, memory_address, &results);
			region_size = results.region_size;
			region_start = results.region_start;
			region_cd = results.region_cd_entry;
			base = results.base;

			if (region_cd != NULL && (page_addr != region_start || assoc_size != region_size)) {
				*cur_protection = VM_PROT_READ;
				*max_protection = VM_PROT_READ;
				printf("mismatched remap of executable range 0x%llx-0x%llx to 0x%llx, "
					   "region_start 0x%llx, region_size 0x%llx, cd_entry %sNULL, making non-executable.\n",
					   page_addr, page_addr+assoc_size, *address,
					   region_start, region_size,
					   region_cd != NULL ? "not " : ""		// Don't leak kernel slide
					);
			}
		}
#endif

	}
	FUNC17(target_map);

	if (result == KERN_SUCCESS && target_map->wiring_required)
		result = FUNC18(target_map, *address,
				     *address + size, *cur_protection, VM_KERN_MEMORY_MLOCK,
				     TRUE);

	/*
	 * If requested, return the address of the data pointed to by the
	 * request, rather than the base of the resulting page.
	 */
	if ((flags & VM_FLAGS_RETURN_DATA_ADDR) != 0) {
		*address += offset_in_mapping;
	}

	return result;
}