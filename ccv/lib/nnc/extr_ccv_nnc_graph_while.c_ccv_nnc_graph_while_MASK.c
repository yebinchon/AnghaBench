#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  ccv_nnc_graph_tensor_wraps_ref_t ;
struct TYPE_14__ {int p_idx; int exec_idx; TYPE_9__* sub_graphs; struct TYPE_14__* p; TYPE_9__* tensor_wraps_refs; TYPE_9__* exec_info; } ;
typedef  TYPE_1__ ccv_nnc_graph_t ;
struct TYPE_15__ {int d; } ;
typedef  TYPE_2__ ccv_nnc_graph_exec_t ;
struct TYPE_16__ {int graph_ref_size; int /*<<< orphan*/  flags; } ;
typedef  TYPE_3__ ccv_nnc_graph_exec_info_t ;
struct TYPE_17__ {int rnum; } ;

/* Variables and functions */
 scalar_t__ const CCV_NNC_GRAPH_BACKWARD ; 
 int /*<<< orphan*/  CCV_NNC_GRAPH_EXEC_P_WHILE ; 
 scalar_t__ const CCV_NNC_GRAPH_FORWARD ; 
 int* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* const* FUNC3 (TYPE_9__*,int) ; 
 void* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_9__*,TYPE_1__* const*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__ const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC7 (TYPE_1__* const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ccv_nnc_no_hint ; 

ccv_nnc_graph_exec_t FUNC8(ccv_nnc_graph_t* const graph, const uint32_t cmd, ccv_nnc_graph_t* const while_graph)
{
	FUNC2(cmd == CCV_NNC_GRAPH_FORWARD || cmd == CCV_NNC_GRAPH_BACKWARD);
	ccv_nnc_graph_exec_t while_exec = FUNC7(graph, FUNC6(cmd, 0, FUNC1(), 0), ccv_nnc_no_hint, 0, 0, 0, 0);
	ccv_nnc_graph_exec_info_t* while_exec_info = (ccv_nnc_graph_exec_info_t*)FUNC3(graph->exec_info, while_exec.d);
	while_exec_info->flags |= CCV_NNC_GRAPH_EXEC_P_WHILE;
	if (!graph->sub_graphs)
		graph->sub_graphs = FUNC4(sizeof(ccv_nnc_graph_t*), 1, 0);
	int i;
	if (while_graph->tensor_wraps_refs)
	{
		// Copy wraps from sub graph to parent graph.
		if (!graph->tensor_wraps_refs)
			graph->tensor_wraps_refs = FUNC4(sizeof(ccv_nnc_graph_tensor_wraps_ref_t), while_graph->tensor_wraps_refs->rnum, 0);
		for (i = 0; i < while_graph->tensor_wraps_refs->rnum; i++)
			FUNC5(graph->tensor_wraps_refs, FUNC3(while_graph->tensor_wraps_refs, i));
	}
	FUNC5(graph->sub_graphs, &while_graph);
	while_graph->p = graph;
	while_graph->p_idx = graph->sub_graphs->rnum;
	while_graph->exec_idx = while_exec.d + 1;
	while_exec_info->graph_ref_size = 1;
	FUNC0(while_exec_info)[0] = graph->sub_graphs->rnum;
	return while_exec;
}