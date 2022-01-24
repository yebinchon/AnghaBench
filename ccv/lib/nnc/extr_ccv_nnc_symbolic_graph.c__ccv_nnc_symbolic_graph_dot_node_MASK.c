#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ alias_ref; } ;
typedef  TYPE_1__ ccv_nnc_tensor_symbol_info_t ;
struct TYPE_8__ {int input_size; scalar_t__* inputs; int output_size; scalar_t__* outputs; } ;
typedef  TYPE_2__ ccv_nnc_graph_exec_symbol_info_t ;
typedef  int /*<<< orphan*/  ccv_array_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const,TYPE_2__ const* const,int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_1__ const* const,TYPE_1__ const* const,int /*<<< orphan*/ ,int const,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const* const,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int const) ; 
 int /*<<< orphan*/  FUNC4 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(const ccv_nnc_graph_exec_symbol_info_t* const exec_symbol_info, const int index, const ccv_array_t* const tensor_symbol_info, const int flags, FILE* out)
{
	FUNC3(out, "node%d [shape=record,label=\"", index);
	FUNC0(index, exec_symbol_info, flags, out);
	int i;
	if (exec_symbol_info->input_size > 0)
	{
		FUNC5("|{Input", out);
		for (i = 0; i < exec_symbol_info->input_size; i++)
		{
			if (exec_symbol_info->inputs[i] >= 0)
			{
				FUNC4('|', out);
				const ccv_nnc_tensor_symbol_info_t* const tensor_symbol = (ccv_nnc_tensor_symbol_info_t*)FUNC2(tensor_symbol_info, exec_symbol_info->inputs[i]);
				const ccv_nnc_tensor_symbol_info_t* const alias_symbol = tensor_symbol->alias_ref ? (ccv_nnc_tensor_symbol_info_t*)FUNC2(tensor_symbol_info, tensor_symbol->alias_ref - 1) : 0;
				FUNC1(exec_symbol_info->inputs[i], tensor_symbol, alias_symbol, 0, flags, out);
			} else
				FUNC5("|-", out);
		}
		FUNC4('}', out);
	}
	if (exec_symbol_info->output_size > 0)
	{
		FUNC5("|{Output", out);
		for (i = 0; i < exec_symbol_info->output_size; i++)
		{
			if (exec_symbol_info->outputs[i] >= 0)
			{
				FUNC4('|', out);
				const ccv_nnc_tensor_symbol_info_t* const tensor_symbol = (ccv_nnc_tensor_symbol_info_t*)FUNC2(tensor_symbol_info, exec_symbol_info->outputs[i]);
				const ccv_nnc_tensor_symbol_info_t* const alias_symbol = tensor_symbol->alias_ref ? (ccv_nnc_tensor_symbol_info_t*)FUNC2(tensor_symbol_info, tensor_symbol->alias_ref - 1) : 0;
				FUNC1(exec_symbol_info->outputs[i], tensor_symbol, alias_symbol, 0, flags, out);
			} else
				FUNC5("|-", out);
		}
		FUNC4('}', out);
	}
	FUNC5("\"];\n", out);
}