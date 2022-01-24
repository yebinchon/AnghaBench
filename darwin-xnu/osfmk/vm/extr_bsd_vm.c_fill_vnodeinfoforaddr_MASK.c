#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* vm_object_t ;
typedef  TYPE_2__* vm_map_entry_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  TYPE_3__* memory_object_t ;
typedef  int /*<<< orphan*/ * memory_object_pager_ops_t ;
typedef  scalar_t__ kern_return_t ;
struct TYPE_13__ {int /*<<< orphan*/ * mo_pager_ops; } ;
struct TYPE_12__ {scalar_t__ is_sub_map; } ;
struct TYPE_11__ {TYPE_3__* pager; int /*<<< orphan*/  alive; scalar_t__ terminating; int /*<<< orphan*/  pager_ready; scalar_t__ internal; struct TYPE_11__* shadow; } ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 TYPE_1__* FUNC0 (TYPE_2__*) ; 
 TYPE_1__* VM_OBJECT_NULL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*,uintptr_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vnode_pager_ops ; 

__attribute__((used)) static int
FUNC4(
	vm_map_entry_t			entry,
	uintptr_t * vnodeaddr,
	uint32_t * vid)
{
	vm_object_t	top_object, object;
	memory_object_t memory_object;
	memory_object_pager_ops_t pager_ops;
	kern_return_t	kr;
	int		shadow_depth;


	if (entry->is_sub_map) {
		return(0);
	} else {
		/*
		 * The last object in the shadow chain has the
		 * relevant pager information.
		 */
		top_object = FUNC0(entry);
		if (top_object == VM_OBJECT_NULL) {
			object = VM_OBJECT_NULL;
			shadow_depth = 0;
		} else {
			FUNC1(top_object);
			for (object = top_object, shadow_depth = 0;
			     object->shadow != VM_OBJECT_NULL;
			     object = object->shadow, shadow_depth++) {
				FUNC1(object->shadow);
				FUNC2(object);
			}
		}
	}

	if (object == VM_OBJECT_NULL) {
		return(0);
	} else if (object->internal) {
		FUNC2(object);
		return(0);
	} else if (! object->pager_ready ||
		   object->terminating ||
		   ! object->alive) {
		FUNC2(object);
		return(0);
	} else {
		memory_object = object->pager;
		pager_ops = memory_object->mo_pager_ops;
		if (pager_ops == &vnode_pager_ops) {
			kr = FUNC3(
				memory_object,
				vnodeaddr, vid);
			if (kr != KERN_SUCCESS) {
				FUNC2(object);
				return(0);
			}
		} else {
			FUNC2(object);
			return(0);
		}
	}
	FUNC2(object);
	return(1);
}