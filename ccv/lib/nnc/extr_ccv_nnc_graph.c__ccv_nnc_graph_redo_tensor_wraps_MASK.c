#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int size; scalar_t__* tensor_wraps; } ;
typedef  TYPE_1__ ccv_nnc_graph_tensor_wrap_array_t ;
struct TYPE_10__ {int /*<<< orphan*/  tensor_wraps; } ;
typedef  TYPE_2__ ccv_nnc_graph_t ;
struct TYPE_11__ {int input_size; int output_size; int update_size; scalar_t__ tensor_wraps_ref; int /*<<< orphan*/  updates; int /*<<< orphan*/  outputs; int /*<<< orphan*/  inputs; } ;
typedef  TYPE_3__ ccv_nnc_graph_exec_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__* const) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* FUNC3 (TYPE_2__* const,int const,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(ccv_nnc_graph_exec_info_t* const info, ccv_nnc_graph_t* const graph)
{
	int i;
	const int has_wrap = FUNC5(info->inputs, info->input_size) ||
		FUNC5(info->outputs, info->output_size) ||
		FUNC5(info->updates, info->update_size);
	if (has_wrap)
	{
		const int tensor_wrap_size = info->input_size + info->output_size + info->update_size;
		ccv_nnc_graph_tensor_wrap_array_t* const tensor_wrap_array = FUNC3(graph, tensor_wrap_size, &info->tensor_wraps_ref);
		FUNC4(tensor_wrap_array->tensor_wraps, info->inputs, info->input_size);
		const int d = info->input_size;
		FUNC4(tensor_wrap_array->tensor_wraps + d, info->outputs, info->output_size);
		const int dd = info->input_size + info->output_size;
		FUNC4(tensor_wrap_array->tensor_wraps + dd, info->updates, info->update_size);
	} else if (info->tensor_wraps_ref) {
		ccv_nnc_graph_tensor_wrap_array_t** tensor_wrap_array_ref = (ccv_nnc_graph_tensor_wrap_array_t**)FUNC2(graph->tensor_wraps, info->tensor_wraps_ref - 1);
		ccv_nnc_graph_tensor_wrap_array_t* const tensor_wrap_array = *tensor_wrap_array_ref;
		if (tensor_wrap_array)
		{
			for (i = 0; i < tensor_wrap_array->size; i++)
				if (tensor_wrap_array->tensor_wraps[i])
					FUNC0(tensor_wrap_array->tensor_wraps[i]);
			FUNC1(tensor_wrap_array);
			*tensor_wrap_array_ref = 0;
			info->tensor_wraps_ref = 0;
		}
	}
}