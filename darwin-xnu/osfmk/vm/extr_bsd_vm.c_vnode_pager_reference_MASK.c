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
typedef  int /*<<< orphan*/  memory_object_t ;
struct TYPE_3__ {int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(
	memory_object_t		mem_obj)
{	
	vnode_pager_t	vnode_object;
	unsigned int		new_ref_count;

	vnode_object = FUNC2(mem_obj);
	new_ref_count = FUNC1(&vnode_object->ref_count, 1);
	FUNC0(new_ref_count > 1);
}