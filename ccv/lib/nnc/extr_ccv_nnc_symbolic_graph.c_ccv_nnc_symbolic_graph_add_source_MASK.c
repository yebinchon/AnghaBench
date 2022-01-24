#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ sources; } ;
typedef  TYPE_1__ ccv_nnc_symbolic_graph_t ;
struct TYPE_7__ {TYPE_1__* const graph; } ;
typedef  TYPE_2__ ccv_nnc_graph_exec_symbol_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_2__ const*) ; 

void FUNC3(ccv_nnc_symbolic_graph_t* const graph, const ccv_nnc_graph_exec_symbol_t source)
{
	if (!graph->sources)
		graph->sources = FUNC1(sizeof(ccv_nnc_graph_exec_symbol_t), 0, 0);
	FUNC0(source.graph == graph);
	FUNC2(graph->sources, &source);
}