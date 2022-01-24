#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  int /*<<< orphan*/  vm_shared_region_t ;
typedef  TYPE_1__* vm_shared_region_slide_info_t ;
typedef  TYPE_2__* vm_shared_region_slide_info_entry_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  mach_vm_size_t ;
typedef  int /*<<< orphan*/  mach_vm_offset_t ;
typedef  scalar_t__ kern_return_t ;
struct TYPE_5__ {int version; int /*<<< orphan*/  v4; int /*<<< orphan*/  v3; int /*<<< orphan*/  v2; int /*<<< orphan*/  v1; } ;
struct TYPE_4__ {scalar_t__ slide_info_size; TYPE_2__* slide_info_entry; scalar_t__ slide; scalar_t__ end; scalar_t__ start; int /*<<< orphan*/ * slide_object; } ;

/* Variables and functions */
 scalar_t__ KERN_FAILURE ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VM_PROT_READ ; 
 int /*<<< orphan*/  kernel_map ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 

kern_return_t
FUNC9(vm_shared_region_t sr)
{
	vm_shared_region_slide_info_t si;
	vm_shared_region_slide_info_entry_t s_info;
	kern_return_t kr;

	si = FUNC4(sr);
	s_info = si->slide_info_entry;

	kr = FUNC1(kernel_map,
			     (mach_vm_offset_t)(vm_offset_t)s_info,
			     (mach_vm_size_t) si->slide_info_size,
			     TRUE, VM_PROT_READ);
	if (kr != KERN_SUCCESS) {
		FUNC2("vm_shared_region_slide_sanity_check: vm_protect() error 0x%x\n", kr);
	}

	if (s_info->version == 1) {
		kr = FUNC5(&s_info->v1);
	} else if (s_info->version == 2) {
		kr = FUNC6(&s_info->v2, si->slide_info_size);
	} else if (s_info->version == 3) {
		kr = FUNC7(&s_info->v3, si->slide_info_size);
    } else if (s_info->version == 4) {
        kr = FUNC8(&s_info->v4, si->slide_info_size);
	} else {
		goto fail;
	}
	if (kr != KERN_SUCCESS) {
		goto fail;
	}

	return KERN_SUCCESS;
fail:
	if (si->slide_info_entry != NULL) {
		FUNC0(kernel_map,
			  (vm_offset_t) si->slide_info_entry,
			  (vm_size_t) si->slide_info_size);
		
		FUNC3(si->slide_object);
	        si->slide_object	= NULL;
		si->start = 0;
		si->end = 0;	
		si->slide = 0;
		si->slide_info_entry = NULL;
		si->slide_info_size = 0;
	}
	return KERN_FAILURE;
}