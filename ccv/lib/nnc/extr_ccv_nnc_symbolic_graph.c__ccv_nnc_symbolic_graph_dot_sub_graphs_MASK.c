#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {TYPE_3__ const* const exec_symbol_info; TYPE_3__* tensor_symbol_info; TYPE_3__* sub_graphs; } ;
typedef  TYPE_1__ ccv_nnc_symbolic_graph_t ;
struct TYPE_17__ {int flags; int graph_ref_size; TYPE_3__ const* const outgoings; } ;
typedef  TYPE_2__ ccv_nnc_graph_exec_symbol_info_t ;
struct TYPE_18__ {int rnum; } ;
typedef  TYPE_3__ ccv_array_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int CCV_NNC_GRAPH_EXEC_CASE_OF ; 
 scalar_t__ FUNC0 (int) ; 
 int CCV_NNC_GRAPH_EXEC_P_WHILE ; 
 int const* FUNC1 (TYPE_2__ const* const) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__ const* const,int,TYPE_3__ const* const,int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__ const* const,int,TYPE_3__*,int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__ const* const,int,TYPE_3__ const* const,TYPE_1__ const* const,int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (TYPE_3__ const* const,int const) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(const ccv_nnc_graph_exec_symbol_info_t* const exec_symbol_info, const ccv_array_t* const tensor_symbol_info, const ccv_array_t* const sub_graphs, const int flags, FILE* out, int* c)
{
	int i, j, k;
	// Output this node info within this subgraph.
	if (exec_symbol_info->flags & CCV_NNC_GRAPH_EXEC_P_WHILE)
	{
		FUNC8(out, "subgraph cluster%d {\nstyle=\"rounded\";\nnode%d [style=invisible];\nlabel=<", *c, *c);
		const ccv_nnc_symbolic_graph_t* const while_graph = *(ccv_nnc_symbolic_graph_t**)FUNC7(sub_graphs, FUNC1(exec_symbol_info)[0] - 1);
		FUNC4(exec_symbol_info, *c, tensor_symbol_info, while_graph, flags, out);
	} else if (exec_symbol_info->flags & CCV_NNC_GRAPH_EXEC_CASE_OF) {
		FUNC8(out, "subgraph cluster%d {\nstyle=\"rounded\";\nnode%d [style=invisible];\nlabel=<", *c, *c);
		FUNC2(exec_symbol_info, *c, tensor_symbol_info, flags, out);
	}
	FUNC9(">;\n", out);
	++(*c);
	for (k = 0; k < exec_symbol_info->graph_ref_size; k++)
	{
		if (exec_symbol_info->flags & CCV_NNC_GRAPH_EXEC_CASE_OF)
		{
			FUNC8(out, "subgraph cluster%d {\nstyle=\"rounded\";\nnode%d [style=invisible];\nlabel=\"\"\n", *c, *c);
			++(*c);
		}
		const ccv_nnc_symbolic_graph_t* const graph = *(ccv_nnc_symbolic_graph_t**)FUNC7(sub_graphs, FUNC1(exec_symbol_info)[k] - 1);
		int* node_id = (int*)FUNC6(sizeof(int) * graph->exec_symbol_info->rnum);
		for (i = 0; i < graph->exec_symbol_info->rnum; i++)
		{
			node_id[i] = *c;
			const ccv_nnc_graph_exec_symbol_info_t* const exec_symbol_info = (ccv_nnc_graph_exec_symbol_info_t*)FUNC7(graph->exec_symbol_info, i);
			// Skip the dead one.
			if (FUNC0(exec_symbol_info->flags))
				continue;
			if (exec_symbol_info->graph_ref_size)
				FUNC10(exec_symbol_info, graph->tensor_symbol_info, graph->sub_graphs, flags, out, c);
			else {
				FUNC3(exec_symbol_info, *c, graph->tensor_symbol_info, flags, out);
				++(*c);
			}
		}
		// Output connections.
		for (i = 0; i < graph->exec_symbol_info->rnum; i++)
		{
			const ccv_nnc_graph_exec_symbol_info_t* exec_symbol_info = (ccv_nnc_graph_exec_symbol_info_t*)FUNC7(graph->exec_symbol_info, i);
			// Skip the dead one.
			if (FUNC0(exec_symbol_info->flags))
				continue;
			if (exec_symbol_info->outgoings)
				for (j = 0; j < exec_symbol_info->outgoings->rnum; j++)
				{
					const int outgoing_idx = *(int*)FUNC7(exec_symbol_info->outgoings, j);
					const ccv_nnc_graph_exec_symbol_info_t* const outgoing_symbol_info = (ccv_nnc_graph_exec_symbol_info_t*)FUNC7(graph->exec_symbol_info, outgoing_idx);
					// If both are sub-graphs, have both tail and head specified.
					if (FUNC1(exec_symbol_info)[0] && FUNC1(outgoing_symbol_info)[0])
						FUNC8(out, "node%d -> node%d [ltail=cluster%d,lhead=cluster%d];\n", node_id[i], node_id[outgoing_idx], node_id[i], node_id[outgoing_idx]);
					else if (FUNC1(exec_symbol_info)[0] && !FUNC1(outgoing_symbol_info)[0])
						FUNC8(out, "node%d -> node%d [ltail=cluster%d];\n", node_id[i], node_id[outgoing_idx], node_id[i]);
					else if (!FUNC1(exec_symbol_info)[0] && FUNC1(outgoing_symbol_info)[0])
						FUNC8(out, "node%d -> node%d [lhead=cluster%d];\n", node_id[i], node_id[outgoing_idx], node_id[outgoing_idx]);
					else
						FUNC8(out, "node%d -> node%d;\n", node_id[i], node_id[outgoing_idx]);
				}
		}
		FUNC9("}\n", out);
		FUNC5(node_id);
	}
	// Extra subgraph cluster.
	if (exec_symbol_info->flags & CCV_NNC_GRAPH_EXEC_CASE_OF)
		FUNC9("}\n", out);
}