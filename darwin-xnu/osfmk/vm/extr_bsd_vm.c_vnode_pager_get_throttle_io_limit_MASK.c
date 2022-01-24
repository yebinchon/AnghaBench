#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vnode_pager_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  TYPE_2__* memory_object_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_7__ {int /*<<< orphan*/ * mo_pager_ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  vnode_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 TYPE_1__* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  vnode_pager_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

kern_return_t
FUNC2(
	memory_object_t		mem_obj,
	uint32_t		*limit)
{
	vnode_pager_t	vnode_object;

	if (mem_obj->mo_pager_ops != &vnode_pager_ops)
		return KERN_INVALID_ARGUMENT;

	vnode_object = FUNC0(mem_obj);

	(void)FUNC1(vnode_object->vnode_handle, limit);
	return KERN_SUCCESS;
}