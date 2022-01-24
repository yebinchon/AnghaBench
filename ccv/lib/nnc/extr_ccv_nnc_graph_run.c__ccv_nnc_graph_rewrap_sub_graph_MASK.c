#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  to; int /*<<< orphan*/  from; } ;
typedef  TYPE_1__ ccv_nnc_graph_tensor_carry_over_t ;
struct TYPE_8__ {TYPE_3__* sub_graphs; TYPE_3__* carry_overs; } ;
typedef  TYPE_2__ ccv_nnc_graph_t ;
struct TYPE_9__ {int rnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__ const* const,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int) ; 

__attribute__((used)) static void FUNC2(const ccv_nnc_graph_t* const graph, const ccv_nnc_graph_t* const sub_graph)
{
	int i;
	if (sub_graph->carry_overs)
		for (i = 0; i < sub_graph->carry_overs->rnum; i++)
		{
			ccv_nnc_graph_tensor_carry_over_t* const carry_over = (ccv_nnc_graph_tensor_carry_over_t*)FUNC1(sub_graph->carry_overs, i);
			FUNC0(graph, carry_over->from);
			FUNC0(graph, carry_over->to);
		}
	if (sub_graph->sub_graphs)
		for (i = 0; i < sub_graph->sub_graphs->rnum; i++)
			FUNC2(graph, *(ccv_nnc_graph_t**)FUNC1(sub_graph->sub_graphs, i));
}