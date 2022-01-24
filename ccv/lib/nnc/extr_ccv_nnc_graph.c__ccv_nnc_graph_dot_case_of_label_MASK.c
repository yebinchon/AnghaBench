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
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ccv_nnc_tensor_multiview_t ;
struct TYPE_9__ {size_t index; size_t zone; } ;
typedef  TYPE_2__ ccv_nnc_tensor_dot_t ;
struct TYPE_10__ {int* remap; int /*<<< orphan*/ * rename_zone; int /*<<< orphan*/ * rename_index; TYPE_2__* dots; } ;
typedef  TYPE_3__ ccv_nnc_tensor_dot_recovery_t ;
struct TYPE_8__ {int /*<<< orphan*/  cmd; } ;
struct TYPE_11__ {int input_size; int output_size; scalar_t__* outputs; scalar_t__* inputs; TYPE_1__ cmd; } ;
typedef  TYPE_4__ ccv_nnc_graph_exec_info_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int const,int const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__ const,int const,int const,int*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int const) ; 
 int /*<<< orphan*/  FUNC5 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(const ccv_nnc_graph_exec_info_t* const exec_info, const int exec_index, const ccv_nnc_tensor_dot_recovery_t recovery, const int flags, const int depth, FILE* out, int* tensor_index)
{
	int i;
	FUNC4(out, "label=<<b>caseof%d </b>Command: ", exec_index);
	FUNC6(FUNC3(exec_info->cmd.cmd), out);
	FUNC6(">;\n", out);
	FUNC4(out, "label%d [shape=record,label=\"{", exec_index);
	int k = *tensor_index;
	if (exec_info->input_size > 0)
	{
		FUNC6("{Input|{", out);
		for (i = 0; i < exec_info->input_size; i++)
		{
			if (i > 0)
				FUNC5('|', out);
			if (exec_info->inputs[i])
			{
				if (FUNC0(exec_info->inputs[i]))
					FUNC2((ccv_nnc_tensor_multiview_t*)exec_info->inputs[i], recovery, flags, depth, &k, out);
				else {
					const ccv_nnc_tensor_dot_t* const tensor_dot = recovery.dots + recovery.remap[k];
					FUNC1(recovery.rename_index[tensor_dot->index], exec_info->inputs[i], recovery.rename_zone[tensor_dot->zone], flags, depth, out);
					++k;
				}
			} else
				FUNC5('-', out);
		}
		FUNC6("}}", out);
	}
	if (exec_info->output_size > 0)
	{
		if (exec_info->input_size > 0)
			FUNC6("|", out);
		FUNC6("{Output|{", out);
		for (i = 0; i < exec_info->output_size; i++)
		{
			if (i > 0)
				FUNC5('|', out);
			if (exec_info->outputs[i])
			{
				if (FUNC0(exec_info->outputs[i]))
					FUNC2((ccv_nnc_tensor_multiview_t*)exec_info->outputs[i], recovery, flags, depth, &k, out);
				else {
					const ccv_nnc_tensor_dot_t* const tensor_dot = recovery.dots + recovery.remap[k];
					FUNC1(recovery.rename_index[tensor_dot->index], exec_info->outputs[i], recovery.rename_zone[tensor_dot->zone], flags, depth, out);
					++k;
				}
			} else
				FUNC5('-', out);
		}
		FUNC6("}}", out);
	}
	FUNC6("}\"];\n", out);
	*tensor_index = k;
}