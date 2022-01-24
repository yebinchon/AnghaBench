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
typedef  TYPE_1__* vnode_pager_t ;
typedef  int /*<<< orphan*/  memory_object_t ;
struct TYPE_4__ {int /*<<< orphan*/ * vnode_handle; int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  PAGER_ALL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vnode_pager_zone ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 

void
FUNC5(
	memory_object_t		mem_obj)
{
	vnode_pager_t	vnode_object;

	FUNC0(PAGER_ALL, ("vnode_pager_deallocate: %p\n", mem_obj));

	vnode_object = FUNC2(mem_obj);

	if (FUNC1(&vnode_object->ref_count, 1) == 0) {
		if (vnode_object->vnode_handle != NULL) {
			FUNC3(vnode_object->vnode_handle);
		}
		FUNC4(vnode_pager_zone, vnode_object);
	}
	return;
}