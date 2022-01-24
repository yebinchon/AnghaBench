#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ccv_nnc_tensor_dot_recovery_t ;
struct TYPE_9__ {TYPE_4__* exec_info; int /*<<< orphan*/  streams; int /*<<< orphan*/  sub_graphs; } ;
typedef  TYPE_1__ ccv_nnc_graph_t ;
struct TYPE_10__ {TYPE_4__* outgoings; } ;
typedef  TYPE_2__ const ccv_nnc_graph_exec_info_t ;
struct TYPE_11__ {int rnum; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__* FUNC0 (TYPE_2__ const* const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__ const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__ const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int,int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const* const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 scalar_t__ FUNC6 (int) ; 
 scalar_t__ FUNC7 (TYPE_4__*,int const) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *) ; 

void FUNC10(const ccv_nnc_graph_t* const graph, const int flags, FILE* out)
{
	FUNC9("digraph G {\ncompound=true;\n", out);
	ccv_nnc_tensor_dot_recovery_t recovery = FUNC3(graph);
	int i, j;
	int k = 0, c = 0;
	int* node_id = (int*)FUNC6(sizeof(int) * graph->exec_info->rnum);
	// Output styles.
	for (i = 0; i < graph->exec_info->rnum; i++)
	{
		node_id[i] = c;
		ccv_nnc_graph_exec_info_t* exec_info = (ccv_nnc_graph_exec_info_t*)FUNC7(graph->exec_info, i);
		if (FUNC0(exec_info)[0])
			FUNC2(exec_info, recovery, graph->sub_graphs, flags, 1, out, &k, &c);
		else {
			FUNC1(exec_info, c, graph->streams, recovery, flags, 0, out, &k);
			++c;
		}
	}
	// Output connections.
	for (i = 0; i < graph->exec_info->rnum; i++)
	{
		ccv_nnc_graph_exec_info_t* exec_info = (ccv_nnc_graph_exec_info_t*)FUNC7(graph->exec_info, i);
		if (exec_info->outgoings)
			for (j = 0; j < exec_info->outgoings->rnum; j++)
			{
				const int outgoing_idx = *(int*)FUNC7(exec_info->outgoings, j);
				const ccv_nnc_graph_exec_info_t* const outgoing_info = (ccv_nnc_graph_exec_info_t*)FUNC7(graph->exec_info, outgoing_idx);
				// If both are sub-graphs, have both tail and head specified.
				if (FUNC0(exec_info)[0] && FUNC0(outgoing_info)[0])
					FUNC8(out, "node%d -> node%d [ltail=cluster%d,lhead=cluster%d];\n", node_id[i], node_id[outgoing_idx], node_id[i], node_id[outgoing_idx]);
				else if (FUNC0(exec_info)[0] && !FUNC0(outgoing_info)[0])
					FUNC8(out, "node%d -> node%d [ltail=cluster%d];\n", node_id[i], node_id[outgoing_idx], node_id[i]);
				else if (!FUNC0(exec_info)[0] && FUNC0(outgoing_info)[0])
					FUNC8(out, "node%d -> node%d [lhead=cluster%d];\n", node_id[i], node_id[outgoing_idx], node_id[outgoing_idx]);
				else
					FUNC8(out, "node%d -> node%d;\n", node_id[i], node_id[outgoing_idx]);
			}
	}
	FUNC9("}\n", out);
	FUNC4(recovery);
	FUNC5(node_id);
}