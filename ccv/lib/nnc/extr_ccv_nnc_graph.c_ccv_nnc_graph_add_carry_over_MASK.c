#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ccv_nnc_tensor_t ;
typedef  int /*<<< orphan*/  ccv_nnc_tensor_multiview_t ;
struct TYPE_5__ {int /*<<< orphan*/  to; int /*<<< orphan*/  from; } ;
typedef  TYPE_1__ ccv_nnc_graph_tensor_carry_over_t ;
struct TYPE_6__ {scalar_t__ carry_overs; } ;
typedef  TYPE_2__ ccv_nnc_graph_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_1__*) ; 

void FUNC3(ccv_nnc_graph_t* const graph, const ccv_nnc_tensor_t* const from, const ccv_nnc_tensor_t* const to)
{
	ccv_nnc_graph_tensor_carry_over_t carry_over = {
		.from = FUNC0((ccv_nnc_tensor_multiview_t*)from),
		.to = FUNC0((ccv_nnc_tensor_multiview_t*)to)
	};
	if (!graph->carry_overs)
		graph->carry_overs = FUNC1(sizeof(ccv_nnc_graph_tensor_carry_over_t), 0, 0);
	FUNC2(graph->carry_overs, &carry_over);
}