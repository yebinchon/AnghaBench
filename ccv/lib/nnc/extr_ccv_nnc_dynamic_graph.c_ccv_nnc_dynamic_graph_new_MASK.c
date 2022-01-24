#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ccv_nnc_tensor_variable_t ;
typedef  int /*<<< orphan*/  ccv_nnc_tensor_variable_graph_bind_t ;
struct TYPE_4__ {int reuse_var; scalar_t__ ws; int /*<<< orphan*/  stateful_execs; int /*<<< orphan*/  tape; void* binds; void* vars; scalar_t__ no_grad; } ;
typedef  TYPE_1__ ccv_nnc_dynamic_graph_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 
 void* FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stateful_exec ; 

ccv_nnc_dynamic_graph_t* FUNC4(void)
{
	ccv_nnc_dynamic_graph_t* graph = FUNC0(sizeof(ccv_nnc_dynamic_graph_t));
	graph->no_grad = 0;
	graph->reuse_var = -1;
	graph->vars = FUNC1(sizeof(ccv_nnc_tensor_variable_t), 1, 0);
	graph->binds = FUNC1(sizeof(ccv_nnc_tensor_variable_graph_bind_t), 1, 0);
	graph->tape = FUNC2();
	graph->stateful_execs = FUNC3(stateful_exec);
	graph->ws = 0;
	return graph;
}