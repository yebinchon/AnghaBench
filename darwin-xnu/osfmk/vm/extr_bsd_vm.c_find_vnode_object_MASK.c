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
typedef  TYPE_3__* memory_object_t ;
typedef  int /*<<< orphan*/ * memory_object_pager_ops_t ;
struct TYPE_13__ {int /*<<< orphan*/ * mo_pager_ops; } ;
struct TYPE_12__ {int /*<<< orphan*/  is_sub_map; } ;
struct TYPE_11__ {TYPE_3__* pager; scalar_t__ alive; int /*<<< orphan*/  terminating; scalar_t__ pager_ready; int /*<<< orphan*/  internal; struct TYPE_11__* shadow; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_2__*) ; 
 TYPE_1__* VM_OBJECT_NULL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  vnode_pager_ops ; 

vm_object_t
FUNC3(
	vm_map_entry_t	entry
)
{
	vm_object_t			top_object, object;
	memory_object_t 		memory_object;
	memory_object_pager_ops_t	pager_ops;

	if (!entry->is_sub_map) {

		/*
		 * The last object in the shadow chain has the
		 * relevant pager information.
		 */

		top_object = FUNC0(entry);

		if (top_object) {
			FUNC1(top_object);

			for (object = top_object; object->shadow != VM_OBJECT_NULL; object = object->shadow) {
				FUNC1(object->shadow);
				FUNC2(object);
			}

			if (object && !object->internal && object->pager_ready && !object->terminating &&
			    object->alive) {
				memory_object = object->pager;
				pager_ops = memory_object->mo_pager_ops;

				/*
				 * If this object points to the vnode_pager_ops, then we found what we're
				 * looking for.  Otherwise, this vm_map_entry doesn't have an underlying
				 * vnode and so we fall through to the bottom and return NULL.
				 */

				if (pager_ops == &vnode_pager_ops) 
					return object;		/* we return with the object locked */
			}

			FUNC2(object);
		}

	}

	return(VM_OBJECT_NULL);
}