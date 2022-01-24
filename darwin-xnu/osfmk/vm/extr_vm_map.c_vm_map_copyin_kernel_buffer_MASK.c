#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_size_t ;
typedef  scalar_t__ vm_map_t ;
typedef  scalar_t__ vm_map_size_t ;
typedef  scalar_t__ vm_map_offset_t ;
typedef  TYPE_1__* vm_map_copy_t ;
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_5__ {int /*<<< orphan*/  cpy_kdata; scalar_t__ offset; scalar_t__ size; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 scalar_t__ KERN_INVALID_ARGUMENT ; 
 scalar_t__ KERN_RESOURCE_SHORTAGE ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  VM_MAP_COPY_KERNEL_BUFFER ; 
 TYPE_1__* VM_MAP_COPY_NULL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int VM_MAP_REMOVE_INTERRUPTIBLE ; 
 int VM_MAP_REMOVE_KUNWIRE ; 
 int VM_MAP_REMOVE_NO_FLAGS ; 
 int VM_MAP_REMOVE_WAIT_FOR_KWIRE ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ cpy_kdata_hdr_sz ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ kernel_map ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ msg_ool_size_small ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static kern_return_t
FUNC7(
	vm_map_t	src_map,
	vm_map_offset_t	src_addr,
	vm_map_size_t	len,
	boolean_t	src_destroy,
	vm_map_copy_t	*copy_result)
{
	kern_return_t kr;
	vm_map_copy_t copy;
	vm_size_t kalloc_size;

	if (len > msg_ool_size_small)
		return KERN_INVALID_ARGUMENT;

	kalloc_size = (vm_size_t)(cpy_kdata_hdr_sz + len);

	copy = (vm_map_copy_t)FUNC2(kalloc_size);
	if (copy == VM_MAP_COPY_NULL)
		return KERN_RESOURCE_SHORTAGE;
	copy->type = VM_MAP_COPY_KERNEL_BUFFER;
	copy->size = len;
	copy->offset = 0;

	kr = FUNC1(src_map, src_addr, copy->cpy_kdata, (vm_size_t)len);
	if (kr != KERN_SUCCESS) {
		FUNC3(copy, kalloc_size);
		return kr;
	}
	if (src_destroy) {
		(void) FUNC4(
			src_map,
			FUNC6(src_addr,
					  FUNC0(src_map)),
			FUNC5(src_addr + len,
					  FUNC0(src_map)),
			(VM_MAP_REMOVE_INTERRUPTIBLE |
			 VM_MAP_REMOVE_WAIT_FOR_KWIRE |
			 ((src_map == kernel_map) ? VM_MAP_REMOVE_KUNWIRE : VM_MAP_REMOVE_NO_FLAGS)));
	}
	*copy_result = copy;
	return KERN_SUCCESS;
}