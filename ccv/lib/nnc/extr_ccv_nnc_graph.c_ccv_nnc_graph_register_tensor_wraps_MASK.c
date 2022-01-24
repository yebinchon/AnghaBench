#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int const d; TYPE_2__* graph; } ;
typedef  TYPE_1__ ccv_nnc_graph_tensor_wraps_ref_t ;
struct TYPE_9__ {struct TYPE_9__* p; TYPE_4__* tensor_wraps_refs; } ;
typedef  TYPE_2__ ccv_nnc_graph_t ;
struct TYPE_10__ {int rnum; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*,int) ; 
 TYPE_4__* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_1__ const*) ; 

void FUNC3(ccv_nnc_graph_t* graph, const int tensor_wraps_ref_d)
{
	ccv_nnc_graph_t* p = graph;
	const ccv_nnc_graph_tensor_wraps_ref_t tensor_wraps_ref = {
		.d = tensor_wraps_ref_d,
		.graph = graph,
	};
	do {
		if (!p->tensor_wraps_refs)
		{
			p->tensor_wraps_refs = FUNC1(sizeof(ccv_nnc_graph_tensor_wraps_ref_t), 0, 0);
			FUNC2(p->tensor_wraps_refs, &tensor_wraps_ref);
		} else {
			int i;
			int has_tensor_wraps_ref = 0;
			for (i = 0; !has_tensor_wraps_ref && i < p->tensor_wraps_refs->rnum; i++)
			{
				ccv_nnc_graph_tensor_wraps_ref_t* tensor_wraps_ref = (ccv_nnc_graph_tensor_wraps_ref_t*)FUNC0(p->tensor_wraps_refs, i);
				has_tensor_wraps_ref = (tensor_wraps_ref->d == tensor_wraps_ref_d && tensor_wraps_ref->graph == graph);
			}
			if (!has_tensor_wraps_ref)
				FUNC2(p->tensor_wraps_refs, &tensor_wraps_ref);
		}
		p = p->p;
	} while (p);
}