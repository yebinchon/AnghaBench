#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  d; TYPE_4__* const graph; } ;
typedef  TYPE_2__ ccv_nnc_tensor_symbol_t ;
struct TYPE_20__ {int /*<<< orphan*/  alias_ref; } ;
typedef  TYPE_3__ ccv_nnc_tensor_symbol_info_t ;
struct TYPE_21__ {TYPE_8__* tensor_symbol_info; TYPE_1__* exec_symbol_info; } ;
typedef  TYPE_4__ ccv_nnc_symbolic_graph_t ;
typedef  int /*<<< orphan*/  ccv_nnc_symbolic_graph_backward_prep_t ;
typedef  int /*<<< orphan*/  ccv_nnc_graph_exec_symbol_t ;
struct TYPE_22__ {int rnum; } ;
struct TYPE_18__ {int rnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__ const* const,int const,TYPE_2__ const* const,int const,TYPE_4__* const,TYPE_4__* const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__* const,int /*<<< orphan*/  const* const,int const,int /*<<< orphan*/  const* const,int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__ const* const,int const,TYPE_2__ const* const,int const,int /*<<< orphan*/ ,int /*<<< orphan*/  const* const,int const,int /*<<< orphan*/  const* const,int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__ const* const,int const,TYPE_2__ const* const,int const,int /*<<< orphan*/  const* const,int const,int /*<<< orphan*/  const* const,int const) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (TYPE_8__*,int /*<<< orphan*/ ) ; 

void FUNC7(ccv_nnc_symbolic_graph_t* const graph, const ccv_nnc_tensor_symbol_t* const f_symbols, const int f_symbol_size, const ccv_nnc_tensor_symbol_t* const wrt_symbols, const int wrt_symbol_size, const ccv_nnc_graph_exec_symbol_t* const sources, const int source_size, const ccv_nnc_graph_exec_symbol_t* const destinations, const int destination_size)
{
	int i;
	// TODO: f symbols cannot be alias yet.
	for (i = 0; i < f_symbol_size; i++)
	{
		FUNC5(f_symbols[i].graph == graph); // f symbol has to be in the current graph.
		FUNC5(!((ccv_nnc_tensor_symbol_info_t*)FUNC6(graph->tensor_symbol_info, f_symbols[i].d))->alias_ref);
	}
	// TODO: wrt symbols cannot be alias yet.
	for (i = 0; i < wrt_symbol_size; i++)
	{
		FUNC5(wrt_symbols[i].graph == graph);
		FUNC5(!((ccv_nnc_tensor_symbol_info_t*)FUNC6(graph->tensor_symbol_info, wrt_symbols[i].d))->alias_ref);
	}
	const int exec_symbol_info_size = graph->exec_symbol_info->rnum;
	const int tensor_symbol_info_size = graph->tensor_symbol_info->rnum;
	FUNC5(exec_symbol_info_size > 0);
	FUNC5(tensor_symbol_info_size > 0);
	ccv_nnc_symbolic_graph_backward_prep_t backward_prep = FUNC1(graph, sources, source_size, destinations, destination_size);
	FUNC4(&backward_prep, f_symbols, f_symbol_size, wrt_symbols, wrt_symbol_size, sources, source_size, destinations, destination_size);
	FUNC3(&backward_prep, f_symbols, f_symbol_size, wrt_symbols, wrt_symbol_size, 0, sources, source_size, destinations, destination_size);
	FUNC0(&backward_prep, f_symbols, f_symbol_size, wrt_symbols, wrt_symbol_size, graph, graph);
	FUNC2(backward_prep);
}