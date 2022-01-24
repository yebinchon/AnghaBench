#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int d; TYPE_3__* graph; } ;
typedef  TYPE_1__ ccv_nnc_graph_tensor_wraps_ref_t ;
typedef  int /*<<< orphan*/  ccv_nnc_graph_tensor_wrap_t ;
struct TYPE_10__ {int size; int /*<<< orphan*/ ** tensor_wraps; } ;
typedef  TYPE_2__ ccv_nnc_graph_tensor_wrap_array_t ;
struct TYPE_11__ {TYPE_4__* tensor_wraps; TYPE_4__* tensor_wraps_refs; } ;
typedef  TYPE_3__ ccv_nnc_graph_t ;
struct TYPE_12__ {int rnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__ const* const,TYPE_3__ const* const) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__ const* const,int /*<<< orphan*/ * const) ; 
 scalar_t__ FUNC2 (TYPE_4__*,int) ; 

__attribute__((used)) static void FUNC3(const ccv_nnc_graph_t* const graph) // Call this method at the end to roll the wrap_ptr back
{
	if (!graph->tensor_wraps_refs)
		return;
	int i, j;
	for (i = 0; i < graph->tensor_wraps_refs->rnum; i++)
	{
		const ccv_nnc_graph_tensor_wraps_ref_t* const tensor_wraps_ref = (const ccv_nnc_graph_tensor_wraps_ref_t*)FUNC2(graph->tensor_wraps_refs, i);
		const ccv_nnc_graph_t* const sub_graph = tensor_wraps_ref->graph;
		ccv_nnc_graph_tensor_wrap_array_t* const tensor_wrap_array = *(ccv_nnc_graph_tensor_wrap_array_t**)FUNC2(sub_graph->tensor_wraps, tensor_wraps_ref->d);
		if (tensor_wrap_array)
			for (j = 0; j < tensor_wrap_array->size; j++)
			{
				ccv_nnc_graph_tensor_wrap_t* const tensor_wrap = tensor_wrap_array->tensor_wraps[j];
				if (!tensor_wrap)
					continue;
				FUNC1(graph, tensor_wrap);
			}
	}
	FUNC0(graph, graph);
}