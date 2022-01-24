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
struct TYPE_4__ {scalar_t__ sources; } ;
typedef  TYPE_1__ ccv_nnc_symbolic_graph_t ;
typedef  int /*<<< orphan*/  ccv_nnc_graph_exec_symbol_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__* const,int /*<<< orphan*/  const) ; 

void FUNC3(ccv_nnc_symbolic_graph_t* const graph, const ccv_nnc_graph_exec_symbol_t* const sources, const int source_size)
{
	if (!graph->sources)
		graph->sources = FUNC1(sizeof(ccv_nnc_graph_exec_symbol_t), 0, 0);
	else
		FUNC0(graph->sources);
	int i;
	for (i = 0; i < source_size; i++)
		FUNC2(graph, sources[i]);
}