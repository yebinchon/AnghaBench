#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_6__* s_ref; TYPE_4__* const name; } ;
typedef  TYPE_3__ ccv_nnc_tensor_symbol_info_t ;
struct TYPE_10__ {TYPE_4__* const exec_symbol_idx; TYPE_4__* const tensor_symbol_idx; } ;
struct TYPE_9__ {TYPE_4__* const tensor_symbol_idx; } ;
struct TYPE_12__ {TYPE_2__ data_parallel; TYPE_1__ backward; TYPE_6__* exec_symbol_info; TYPE_6__* tensor_symbol_info; struct TYPE_12__* const breakpoints; TYPE_6__* destinations; TYPE_6__* sources; TYPE_6__* sub_graphs; } ;
typedef  TYPE_4__ ccv_nnc_symbolic_graph_t ;
typedef  int /*<<< orphan*/  ccv_nnc_graph_exec_symbol_info_t ;
struct TYPE_13__ {int rnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__* const) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 scalar_t__ FUNC3 (TYPE_6__*,int) ; 

void FUNC4(ccv_nnc_symbolic_graph_t* const graph)
{
	int i;
	for (i = 0; i < graph->exec_symbol_info->rnum; i++)
		FUNC0((ccv_nnc_graph_exec_symbol_info_t*)FUNC3(graph->exec_symbol_info, i), 0);
	for (i = 0; i < graph->tensor_symbol_info->rnum; i++)
	{
		ccv_nnc_tensor_symbol_info_t* const symbol_info = (ccv_nnc_tensor_symbol_info_t*)FUNC3(graph->tensor_symbol_info, i);
		if (symbol_info->name)
			FUNC1(symbol_info->name);
		if (symbol_info->s_ref)
			FUNC2(symbol_info->s_ref);
	}
	if (graph->sub_graphs)
	{
		for (i = 0; i < graph->sub_graphs->rnum; i++)
			FUNC4(*(ccv_nnc_symbolic_graph_t**)FUNC3(graph->sub_graphs, i));
		FUNC2(graph->sub_graphs);
	}
	if (graph->sources)
		FUNC2(graph->sources);
	if (graph->destinations)
		FUNC2(graph->destinations);
	if (graph->breakpoints)
		FUNC1(graph->breakpoints);
	FUNC2(graph->tensor_symbol_info);
	FUNC2(graph->exec_symbol_info);
	if (graph->backward.tensor_symbol_idx)
		FUNC1(graph->backward.tensor_symbol_idx);
	if (graph->data_parallel.tensor_symbol_idx)
		FUNC1(graph->data_parallel.tensor_symbol_idx);
	if (graph->data_parallel.exec_symbol_idx)
		FUNC1(graph->data_parallel.exec_symbol_idx);
	FUNC1(graph);
}