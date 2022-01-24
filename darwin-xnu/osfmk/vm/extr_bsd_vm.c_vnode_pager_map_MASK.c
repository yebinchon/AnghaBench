#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vnode_pager_t ;
typedef  int /*<<< orphan*/  vm_prot_t ;
typedef  int /*<<< orphan*/  memory_object_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_3__ {int /*<<< orphan*/  vnode_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  PAGER_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 

kern_return_t
FUNC3(
	memory_object_t		mem_obj,
	vm_prot_t		prot)
{
	vnode_pager_t		vnode_object;
	int			ret;
	kern_return_t		kr;

	FUNC0(PAGER_ALL, ("vnode_pager_map: %p %x\n", mem_obj, prot));

	vnode_object = FUNC2(mem_obj);

	ret = FUNC1(vnode_object->vnode_handle, prot);

	if (ret != 0) {
		kr = KERN_FAILURE;
	} else {
		kr = KERN_SUCCESS;
	}

	return kr;
}