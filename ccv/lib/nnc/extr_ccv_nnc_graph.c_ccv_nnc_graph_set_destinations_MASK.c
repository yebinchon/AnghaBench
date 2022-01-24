#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ topsorted; scalar_t__ destinations; int /*<<< orphan*/  sources; } ;
typedef  TYPE_1__ ccv_nnc_graph_t ;
typedef  int /*<<< orphan*/  ccv_nnc_graph_exec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/  const* const) ; 

void FUNC3(ccv_nnc_graph_t* const graph, const ccv_nnc_graph_exec_t* const destinations, const int destination_size)
{
	if (!graph->destinations)
		graph->destinations = FUNC1(sizeof(ccv_nnc_graph_exec_t), destination_size, 0);
	else
		FUNC0(graph->sources);
	int i;
	for (i = 0; i < destination_size; i++)
		FUNC2(graph->destinations, destinations + i);
	graph->topsorted = 0;
}