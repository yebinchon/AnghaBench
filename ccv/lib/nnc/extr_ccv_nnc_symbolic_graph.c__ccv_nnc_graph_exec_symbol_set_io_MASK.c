#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int d; TYPE_3__* const graph; } ;
typedef  TYPE_1__ ccv_nnc_tensor_symbol_t ;
struct TYPE_19__ {int format; int datatype; int /*<<< orphan*/  type; } ;
struct TYPE_16__ {TYPE_7__ info; } ;
typedef  TYPE_2__ ccv_nnc_tensor_symbol_info_t ;
struct TYPE_17__ {int /*<<< orphan*/  tensor_symbol_info; } ;
typedef  TYPE_3__ ccv_nnc_symbolic_graph_t ;
struct TYPE_20__ {int /*<<< orphan*/  backend; } ;
struct TYPE_18__ {int input_size; int output_size; int* inputs; int* outputs; TYPE_8__ cmd; } ;
typedef  TYPE_4__ ccv_nnc_graph_exec_symbol_info_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAP_TENSOR_USE_AS_OUTPUT ; 
 int FUNC1 (TYPE_3__* const,TYPE_1__ const,int /*<<< orphan*/ ) ; 
 int* FUNC2 (int) ; 
 int* FUNC3 (int*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__,int,int,int) ; 
 scalar_t__ FUNC6 (TYPE_7__) ; 
 int FUNC7 (TYPE_3__* const,TYPE_1__ const) ; 

__attribute__((used)) static void FUNC8(ccv_nnc_symbolic_graph_t* const graph, ccv_nnc_graph_exec_symbol_info_t* const exec_info, const ccv_nnc_tensor_symbol_t* const inputs, const int input_size, const ccv_nnc_tensor_symbol_t* const outputs, const int output_size)
{
	exec_info->input_size = input_size;
	exec_info->output_size = output_size;
	if (input_size > 0 || output_size > 0)
	{
		if (!exec_info->inputs)
			exec_info->inputs = FUNC2(sizeof(int) * (input_size + output_size));
		else
			exec_info->inputs = FUNC3(exec_info->inputs, sizeof(int) * (input_size + output_size));
		exec_info->outputs = exec_info->inputs + input_size;
	}
	int i;
	int tensor_memory = 0, tensor_formats = 0, tensor_datatypes = 0, tensor_auto = 0;
	for (i = 0; i < input_size; i++)
	{
		const int d = FUNC7(graph, inputs[i]);
		exec_info->inputs[i] = d;
		if (d >= 0)
		{
			const ccv_nnc_tensor_symbol_info_t* const tensor_info = (ccv_nnc_tensor_symbol_info_t*)FUNC4(graph->tensor_symbol_info, d);
			tensor_auto = tensor_auto || FUNC6(tensor_info->info);
			tensor_memory |= FUNC0(tensor_info->info.type), tensor_formats |= tensor_info->info.format, tensor_datatypes |= tensor_info->info.datatype;
		}
	}
	for (i = 0; i < output_size; i++)
	{
		const int d = (outputs[i].graph != graph && outputs[i].d >= 0) ? FUNC1(graph, outputs[i], MAP_TENSOR_USE_AS_OUTPUT) : outputs[i].d;
		exec_info->outputs[i] = d;
		if (d >= 0)
		{
			const ccv_nnc_tensor_symbol_info_t* const tensor_info = (ccv_nnc_tensor_symbol_info_t*)FUNC4(graph->tensor_symbol_info, d);
			tensor_auto = tensor_auto || FUNC6(tensor_info->info);
			tensor_memory |= FUNC0(tensor_info->info.type), tensor_formats |= tensor_info->info.format, tensor_datatypes |= tensor_info->info.datatype;
		}
	}
	// If there is no auto tensor, we try to find backend (we don't know which backend if the tensor is auto).
	if (!tensor_auto)
		exec_info->cmd.backend = FUNC5(exec_info->cmd, tensor_memory, tensor_formats, tensor_datatypes);
}