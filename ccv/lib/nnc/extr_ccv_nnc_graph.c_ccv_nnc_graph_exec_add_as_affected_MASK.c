#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ccv_nnc_tensor_t ;
struct TYPE_10__ {TYPE_7__* exec_info; } ;
typedef  TYPE_1__ ccv_nnc_graph_t ;
struct TYPE_11__ {scalar_t__ d; TYPE_1__* const graph; } ;
typedef  TYPE_2__ ccv_nnc_graph_exec_t ;
struct TYPE_12__ {int update_size; scalar_t__ tensor_wraps_ref; int /*<<< orphan*/ ** updates; } ;
typedef  TYPE_3__ ccv_nnc_graph_exec_info_t ;
struct TYPE_13__ {scalar_t__ rnum; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__* const,TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,int) ; 
 scalar_t__ FUNC5 (TYPE_7__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__* const,scalar_t__) ; 

void FUNC7(ccv_nnc_graph_t* const graph, const ccv_nnc_graph_exec_t exec, ccv_nnc_tensor_t* const update)
{
	FUNC2(FUNC0(update));
	FUNC2(exec.d < graph->exec_info->rnum);
	FUNC2(exec.graph == graph);
	ccv_nnc_graph_exec_info_t* const info = (ccv_nnc_graph_exec_info_t*)FUNC5(graph->exec_info, exec.d);
	const int register_tensor_wraps = !info->tensor_wraps_ref;
	const int update_index = info->update_size;
	++info->update_size;
	if (info->updates)
		info->updates = (ccv_nnc_tensor_t**)FUNC4(info->updates, sizeof(ccv_nnc_tensor_t*) * info->update_size);
	else
		info->updates = (ccv_nnc_tensor_t**)FUNC3(sizeof(ccv_nnc_tensor_t*) * info->update_size);
	info->updates[update_index] = update;
	FUNC1(info, graph);
	if (register_tensor_wraps)
		FUNC6(graph, info->tensor_wraps_ref - 1);
}