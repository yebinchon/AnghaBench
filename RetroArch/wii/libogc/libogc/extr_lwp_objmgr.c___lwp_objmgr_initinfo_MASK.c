#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
typedef  int /*<<< orphan*/  lwp_queue ;
struct TYPE_5__ {size_t min_id; int max_id; int inactives_cnt; size_t node_size; size_t max_nodes; int /*<<< orphan*/  inactives; int /*<<< orphan*/ * obj_blocks; TYPE_2__** local_table; } ;
typedef  TYPE_1__ lwp_objinfo ;
struct TYPE_6__ {size_t id; int /*<<< orphan*/  node; int /*<<< orphan*/ * information; } ;
typedef  TYPE_2__ lwp_obj ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (void**) ; 
 size_t _lwp_objmgr_memsize ; 
 TYPE_2__* null_local_table ; 

void FUNC6(lwp_objinfo *info,u32 max_nodes,u32 node_size)
{
	u32 idx,i,size;
	lwp_obj *object;
	lwp_queue inactives;
	void **local_table;

	info->min_id = 0;
	info->max_id = 0;
	info->inactives_cnt = 0;
	info->node_size = node_size;
	info->max_nodes = max_nodes;
	info->obj_blocks = NULL;
	info->local_table = &null_local_table;

	FUNC2(&info->inactives);

	size = ((info->max_nodes*sizeof(lwp_obj*))+(info->max_nodes*info->node_size));
	local_table = (void**)FUNC4(info->max_nodes*sizeof(lwp_obj*));
	if(!local_table) return;

	info->local_table = (lwp_obj**)local_table;
	for(i=0;i<info->max_nodes;i++) {
		local_table[i] = NULL;
	}

	info->obj_blocks = FUNC4(info->max_nodes*info->node_size);
	if(!info->obj_blocks) {
		FUNC5(local_table);
		return;
	}

	FUNC3(&inactives,info->obj_blocks,info->max_nodes,info->node_size);

	idx = info->min_id;
	while((object=(lwp_obj*)FUNC1(&inactives))!=NULL) {
		object->id = idx;
		object->information = NULL;
		FUNC0(&info->inactives,&object->node);
		idx++;
	}

	info->max_id += info->max_nodes;
	info->inactives_cnt += info->max_nodes;
	_lwp_objmgr_memsize += size;
}