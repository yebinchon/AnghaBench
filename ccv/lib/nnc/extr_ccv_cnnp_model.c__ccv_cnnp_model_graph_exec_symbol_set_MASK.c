#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/ * graph_exec_arena; } ;
struct TYPE_17__ {TYPE_1__ apply_gradients; int /*<<< orphan*/ * graph_exec_arena; int /*<<< orphan*/  parallel_count; } ;
typedef  TYPE_2__ ccv_nnc_symbolic_graph_t ;
struct TYPE_18__ {scalar_t__ graph; } ;
typedef  TYPE_3__ const ccv_nnc_graph_exec_symbol_t ;
typedef  int /*<<< orphan*/  ccv_nnc_graph_exec_arena_t ;
typedef  int /*<<< orphan*/  ccv_nnc_cmd_t ;
struct TYPE_19__ {TYPE_2__* graph; TYPE_2__* compiled_data; } ;
typedef  TYPE_4__ ccv_cnnp_model_t ;
typedef  TYPE_2__ ccv_cnnp_compiled_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ * const,int const,TYPE_3__ const,int /*<<< orphan*/  const,TYPE_2__* const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__* const) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 TYPE_3__ const FUNC3 (TYPE_2__* const,TYPE_3__ const,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__* const,TYPE_3__ const,int /*<<< orphan*/  const) ; 

__attribute__((used)) static void FUNC5(ccv_cnnp_model_t* const model, const ccv_nnc_graph_exec_symbol_t exec_symbol, const ccv_nnc_cmd_t cmd)
{
	ccv_cnnp_compiled_data_t* const compiled_data = model->compiled_data;
	FUNC1(compiled_data);
	const int parallel_count = FUNC2(compiled_data->parallel_count, 1);
	ccv_nnc_symbolic_graph_t* const symbolic_graph = model->graph;
	FUNC1(symbolic_graph);
	FUNC4(symbolic_graph, exec_symbol, cmd);
	int i;
	for (i = 1; i < parallel_count; i++)
	{
		ccv_nnc_graph_exec_symbol_t copy_symbol = FUNC3(symbolic_graph, exec_symbol, i);
		if (copy_symbol.graph)
			FUNC4(symbolic_graph, copy_symbol, cmd);
	}
	ccv_nnc_graph_exec_arena_t* const graph_exec_arena = compiled_data->graph_exec_arena;
	if (graph_exec_arena)
		FUNC0(graph_exec_arena, parallel_count, exec_symbol, cmd, symbolic_graph);
	// Skip backward graph exec arena because it is for a specific accum symbolic graph, not the main graph (model->graph)
	ccv_nnc_graph_exec_arena_t* const gradient_graph_exec_arena = compiled_data->apply_gradients.graph_exec_arena;
	if (gradient_graph_exec_arena)
		FUNC0(gradient_graph_exec_arena, parallel_count, exec_symbol, cmd, symbolic_graph);
}