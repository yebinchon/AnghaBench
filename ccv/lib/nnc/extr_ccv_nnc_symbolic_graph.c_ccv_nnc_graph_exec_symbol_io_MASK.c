#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_6__* exec_symbol_info; } ;
typedef  TYPE_1__ ccv_nnc_symbolic_graph_t ;
struct TYPE_8__ {scalar_t__ d; TYPE_1__ const* const graph; } ;
typedef  TYPE_2__ ccv_nnc_graph_exec_symbol_t ;
struct TYPE_9__ {int* inputs; int input_size; int* outputs; int output_size; } ;
typedef  TYPE_3__ ccv_nnc_graph_exec_symbol_info_t ;
struct TYPE_10__ {scalar_t__ rnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_6__*,scalar_t__) ; 

void FUNC2(const ccv_nnc_symbolic_graph_t* const graph, const ccv_nnc_graph_exec_symbol_t symbol, const int** const inputs, int* const input_size, const int** const outputs, int* const output_size)
{
	FUNC0(graph == symbol.graph);
	FUNC0(symbol.d < graph->exec_symbol_info->rnum);
	const ccv_nnc_graph_exec_symbol_info_t* const symbol_info = (ccv_nnc_graph_exec_symbol_info_t*)FUNC1(graph->exec_symbol_info, symbol.d);
	if (inputs)
		*inputs = symbol_info->inputs;
	if (input_size)
		*input_size = symbol_info->input_size;
	if (outputs)
		*outputs = symbol_info->outputs;
	if (output_size)
		*output_size = symbol_info->output_size;
}