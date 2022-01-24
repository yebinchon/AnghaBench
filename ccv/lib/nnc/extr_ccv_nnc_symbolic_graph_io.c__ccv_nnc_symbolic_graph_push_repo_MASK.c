#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_3__* sub_graphs; } ;
typedef  TYPE_1__ ccv_nnc_symbolic_graph_t ;
typedef  int /*<<< orphan*/  ccv_array_t ;
struct TYPE_6__ {int rnum; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const,TYPE_1__ const* const*) ; 

__attribute__((used)) static void FUNC2(const ccv_nnc_symbolic_graph_t* const graph, ccv_array_t* const repo)
{
	FUNC1(repo, &graph);
	int i;
	if (graph->sub_graphs && graph->sub_graphs->rnum)
		for (i = 0; i < graph->sub_graphs->rnum; i++)
		{
			const ccv_nnc_symbolic_graph_t* const sub_graph = *(ccv_nnc_symbolic_graph_t**)FUNC0(graph->sub_graphs, i);
			if (sub_graph)
				FUNC2(sub_graph, repo);
		}
}