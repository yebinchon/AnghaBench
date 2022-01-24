#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ khiter_t ;
typedef  scalar_t__ ccv_nnc_tensor_variable_t ;
typedef  int /*<<< orphan*/  ccv_nnc_tensor_variable_graph_bind_t ;
struct TYPE_8__ {int /*<<< orphan*/  stateful_execs; TYPE_4__* ws; int /*<<< orphan*/  tape; TYPE_4__* binds; TYPE_4__* vars; } ;
typedef  TYPE_1__ ccv_nnc_dynamic_graph_t ;
struct TYPE_9__ {int rnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__* const,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* const FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  stateful_exec ; 

void FUNC11(ccv_nnc_dynamic_graph_t* const graph)
{
	int i;
	for (i = 0; i < graph->vars->rnum; i++)
	{
		ccv_nnc_tensor_variable_t tensor_variable = *(ccv_nnc_tensor_variable_t*)FUNC4(graph->vars, i);
		if (tensor_variable)
			FUNC0(graph, tensor_variable, 0);
	}
	FUNC3(graph->vars);
	for (i = 0; i < graph->binds->rnum; i++)
		FUNC1((ccv_nnc_tensor_variable_graph_bind_t*)FUNC4(graph->binds, i), 0);
	FUNC3(graph->binds);
	FUNC5(graph->tape);
	if (graph->ws)
		FUNC3(graph->ws);
	khiter_t k;
	for (k = FUNC6(graph->stateful_execs); k != FUNC8(graph->stateful_execs); ++k)
	{
		if (!FUNC9(graph->stateful_execs, k))
			continue;
		FUNC2(FUNC10(graph->stateful_execs, k));
	}
	FUNC7(stateful_exec, graph->stateful_execs);
	FUNC2(graph);
}