#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int alias_ref; char* name; int assign_ref; TYPE_5__ const* const s_ref; } ;
typedef  TYPE_2__ const ccv_nnc_tensor_symbol_info_t ;
struct TYPE_14__ {int p_idx; TYPE_5__ const* const tensor_symbol_info; } ;
typedef  TYPE_3__ ccv_nnc_symbolic_graph_t ;
struct TYPE_12__ {int /*<<< orphan*/  cmd; } ;
struct TYPE_15__ {char* name; int input_size; scalar_t__* inputs; int output_size; int* outputs; TYPE_1__ cmd; } ;
typedef  TYPE_4__ ccv_nnc_graph_exec_symbol_info_t ;
struct TYPE_16__ {int rnum; } ;
typedef  TYPE_5__ ccv_array_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int const CCV_NNC_LONG_DOT_GRAPH ; 
 int /*<<< orphan*/  FUNC0 (int,TYPE_2__ const*,TYPE_2__ const*,int,int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_5__ const* const,int const) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int const) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(const ccv_nnc_graph_exec_symbol_info_t* const exec_symbol_info, const int index, const ccv_array_t* const tensor_symbol_info, const ccv_nnc_symbolic_graph_t* const while_graph, const int flags, FILE* out)
{
	int i;
	if (flags == CCV_NNC_LONG_DOT_GRAPH)
		FUNC5("<table border=\"0\" cellborder=\"1\" cellspacing=\"0\"><tr><td colspan=\"3\" border=\"0\"><b>", out);
	else
		FUNC5("<table border=\"0\" cellborder=\"1\" cellspacing=\"0\"><tr><td colspan=\"2\" border=\"0\"><b>", out);
	if (exec_symbol_info->name)
		FUNC5(exec_symbol_info->name, out);
	else
		FUNC4(out, "while%d", index);
	FUNC5(" </b>Command: ", out);
	FUNC5(FUNC3(exec_symbol_info->cmd.cmd), out);
	FUNC5("</td></tr>", out);
	const int p_idx = while_graph->p_idx - 1;
	FUNC1(p_idx >= 0);
	if (exec_symbol_info->input_size > 0)
	{
		FUNC4(out, "<tr><td rowspan=\"%d\">Input</td>", exec_symbol_info->input_size);
		for (i = 0; i < exec_symbol_info->input_size; i++)
		{
			if (i > 0)
				FUNC5("<tr>", out);
			if (exec_symbol_info->inputs[i] >= 0)
			{
				FUNC5("<td>", out);
				const ccv_nnc_tensor_symbol_info_t* const tensor_symbol = (ccv_nnc_tensor_symbol_info_t*)FUNC2(tensor_symbol_info, exec_symbol_info->inputs[i]);
				const ccv_nnc_tensor_symbol_info_t* const alias_symbol = tensor_symbol->alias_ref ? (ccv_nnc_tensor_symbol_info_t*)FUNC2(tensor_symbol_info, tensor_symbol->alias_ref - 1) : 0;
				FUNC0(exec_symbol_info->inputs[i], tensor_symbol, alias_symbol, 1, flags, out);
				FUNC5("</td><td border=\"0\">=&gt; ", out);
				const int s_idx = *(int*)FUNC2(tensor_symbol->s_ref, p_idx) - 1;
				FUNC1(s_idx >= 0);
				const ccv_nnc_tensor_symbol_info_t* const sub_tensor_symbol = (ccv_nnc_tensor_symbol_info_t*)FUNC2(while_graph->tensor_symbol_info, s_idx);
				if (sub_tensor_symbol->name)
					FUNC5(sub_tensor_symbol->name, out);
				else
					FUNC4(out, "tensor%d", s_idx);
				FUNC5("</td></tr>", out);
			} else {
				if (flags == CCV_NNC_LONG_DOT_GRAPH)
					FUNC5("<td colspan=\"3\">-</td></tr>", out);
				else
					FUNC5("<td colspan=\"2\">-</td></tr>", out);
			}
		}
	}
	if (exec_symbol_info->output_size > 0)
	{
		FUNC4(out, "<tr><td rowspan=\"%d\">Output</td>", exec_symbol_info->output_size);
		for (i = 0; i < exec_symbol_info->output_size; i++)
		{
			if (i > 0)
				FUNC5("<tr>", out);
			if (exec_symbol_info->outputs[i] >= 0)
			{
				FUNC5("<td>", out);
				ccv_nnc_tensor_symbol_info_t* tensor_symbol = (ccv_nnc_tensor_symbol_info_t*)FUNC2(tensor_symbol_info, exec_symbol_info->outputs[i]);
				ccv_nnc_tensor_symbol_info_t* alias_symbol = tensor_symbol->alias_ref ? (ccv_nnc_tensor_symbol_info_t*)FUNC2(tensor_symbol_info, tensor_symbol->alias_ref - 1) : 0;
				FUNC0(exec_symbol_info->outputs[i], tensor_symbol, alias_symbol, 1, flags, out);
				FUNC5("</td><td border=\"0\">=&gt; ", out);
				const int s_idx = *(int*)FUNC2(tensor_symbol->s_ref, p_idx) - 1;
				FUNC1(s_idx >= 0);
				const ccv_nnc_tensor_symbol_info_t* const sub_tensor_symbol = (ccv_nnc_tensor_symbol_info_t*)FUNC2(while_graph->tensor_symbol_info, s_idx);
				if (sub_tensor_symbol->name)
					FUNC5(sub_tensor_symbol->name, out);
				else
					FUNC4(out, "tensor%d", s_idx);
				FUNC5("</td></tr>", out);
			} else {
				if (flags == CCV_NNC_LONG_DOT_GRAPH)
					FUNC5("<td colspan=\"3\">-</td></tr>", out);
				else
					FUNC5("<td colspan=\"2\">-</td></tr>", out);
			}
		}
	}
	for (i = 0; i < while_graph->tensor_symbol_info->rnum; i++)
	{
		const ccv_nnc_tensor_symbol_info_t* const tensor_symbol_info = (ccv_nnc_tensor_symbol_info_t*)FUNC2(while_graph->tensor_symbol_info, i);
		if (tensor_symbol_info->assign_ref)
		{
			if (flags == CCV_NNC_LONG_DOT_GRAPH)
				FUNC5("<tr><td colspan=\"3\" border=\"0\">", out);
			else
				FUNC5("<tr><td colspan=\"2\" border=\"0\">", out);
			const ccv_nnc_tensor_symbol_info_t* const assign_symbol_info = (ccv_nnc_tensor_symbol_info_t*)FUNC2(while_graph->tensor_symbol_info, tensor_symbol_info->assign_ref - 1);
			if (assign_symbol_info->name)
				FUNC5(assign_symbol_info->name, out);
			else
				FUNC4(out, "tensor%d", tensor_symbol_info->assign_ref - 1);
			FUNC5(" -&gt; ", out);
			if (tensor_symbol_info->name)
				FUNC5(tensor_symbol_info->name, out);
			else
				FUNC4(out, "tensor%d", i);
			FUNC5("</td></tr>", out);
		}
	}
	FUNC5("</table>", out);
}