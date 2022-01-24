#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_13__ {scalar_t__ p_idx; struct TYPE_13__* p; scalar_t__ exec_idx; TYPE_9__* sub_graphs; int /*<<< orphan*/  exec_symbol_info; } ;
typedef  TYPE_1__ ccv_nnc_symbolic_graph_t ;
struct TYPE_14__ {scalar_t__ d; } ;
typedef  TYPE_2__ ccv_nnc_graph_exec_symbol_t ;
struct TYPE_15__ {int graph_ref_size; int /*<<< orphan*/  flags; } ;
typedef  TYPE_3__ ccv_nnc_graph_exec_symbol_info_t ;
struct TYPE_16__ {scalar_t__ rnum; } ;

/* Variables and functions */
 scalar_t__ const CCV_NNC_GRAPH_BACKWARD ; 
 int /*<<< orphan*/  CCV_NNC_GRAPH_EXEC_P_WHILE ; 
 scalar_t__ const CCV_NNC_GRAPH_FORWARD ; 
 scalar_t__* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_9__* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_9__*,TYPE_1__* const*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__ const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC7 (TYPE_1__* const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const* const) ; 

ccv_nnc_graph_exec_symbol_t FUNC8(ccv_nnc_symbolic_graph_t* const graph, const uint32_t cmd, ccv_nnc_symbolic_graph_t* const while_graph, const char* const name)
{
	FUNC2(cmd == CCV_NNC_GRAPH_FORWARD || cmd == CCV_NNC_GRAPH_BACKWARD);
	FUNC2(while_graph->p == 0);
	FUNC2(while_graph->p_idx == 0);
	// Added one more symbol.
	ccv_nnc_graph_exec_symbol_t symbol = FUNC7(graph, FUNC6(cmd, 0, FUNC1(), 0), 0, 0, 0, 0, name);
	// Assigning graph_ref to it.
	if (!graph->sub_graphs)
		graph->sub_graphs = FUNC4(sizeof(ccv_nnc_symbolic_graph_t*), 1, 0);
	FUNC5(graph->sub_graphs, &while_graph);
	ccv_nnc_graph_exec_symbol_info_t* symbol_info = (ccv_nnc_graph_exec_symbol_info_t*)FUNC3(graph->exec_symbol_info, symbol.d);
	symbol_info->flags |= CCV_NNC_GRAPH_EXEC_P_WHILE;
	symbol_info->graph_ref_size = 1;
	// Note the extra allocation (the ccv_array_t only holds a pointer to ccv_nnc_symbolic_graph_t*).
	// In this way, we can get the while graph and don't have to worry about it will be an invalid pointer once
	// the array expands (another while graph allocated).
	FUNC0(symbol_info)[0] = graph->sub_graphs->rnum;
	while_graph->p_idx = graph->sub_graphs->rnum;
	while_graph->exec_idx = symbol.d + 1;
	while_graph->p = graph;
	return symbol;
}