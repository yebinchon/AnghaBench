#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_size_t ;
typedef  TYPE_2__* vm_object_t ;
typedef  int /*<<< orphan*/  vm_object_offset_t ;
typedef  int /*<<< orphan*/  upl_t ;
typedef  scalar_t__ upl_size_t ;
typedef  int /*<<< orphan*/  ppnum_t ;
typedef  int /*<<< orphan*/  memory_object_t ;
typedef  scalar_t__ memory_object_offset_t ;
typedef  scalar_t__ kern_return_t ;
typedef  TYPE_3__* device_pager_t ;
struct TYPE_8__ {int /*<<< orphan*/  mo_control; } ;
struct TYPE_10__ {TYPE_1__ dev_pgr_hdr; } ;
struct TYPE_9__ {int /*<<< orphan*/  phys_contiguous; } ;

/* Variables and functions */
 TYPE_3__* DEVICE_PAGER_NULL ; 
 scalar_t__ KERN_FAILURE ; 
 scalar_t__ KERN_SUCCESS ; 
 int UPL_CLEAN_IN_PLACE ; 
 int UPL_NO_SYNC ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_NONE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int*,int,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC8(
	memory_object_t		device,
	memory_object_offset_t	offset,
	ppnum_t			page_num,
	vm_size_t		size)
{
	device_pager_t	device_object;
	vm_object_t	vm_object;
	kern_return_t	kr;
	upl_t		upl;

	device_object = FUNC1(device);
	if(device_object == DEVICE_PAGER_NULL)
		return KERN_FAILURE;

	vm_object = (vm_object_t)FUNC2(
					device_object->dev_pgr_hdr.mo_control);
	if(vm_object == NULL) 
		return KERN_FAILURE;

	kr =  FUNC6(
				vm_object, offset, page_num, size);
	if(kr != KERN_SUCCESS)
		return kr;

	if(!vm_object->phys_contiguous) {
		unsigned int null_size = 0;
		FUNC0((upl_size_t) size == size);
        	kr = FUNC7(vm_object,
					   (vm_object_offset_t)offset,
					   (upl_size_t) size, &upl,  NULL,
					   &null_size,
					   (UPL_NO_SYNC | UPL_CLEAN_IN_PLACE),
					   VM_KERN_MEMORY_NONE);
		if(kr != KERN_SUCCESS)
			FUNC3("device_pager_populate_object: list_req failed");

		FUNC4(upl, NULL, 0);
		FUNC5(upl);
	}


	return kr;
}