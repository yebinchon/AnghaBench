#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int d; TYPE_4__* const graph; } ;
typedef  TYPE_2__ ccv_nnc_tensor_symbol_t ;
struct TYPE_10__ {int /*<<< orphan*/  flags; scalar_t__ name; scalar_t__ s_ref; } ;
typedef  TYPE_3__ ccv_nnc_tensor_symbol_info_t ;
struct TYPE_8__ {int tensor; } ;
struct TYPE_11__ {TYPE_1__ reuse; TYPE_7__* tensor_symbol_info; } ;
typedef  TYPE_4__ ccv_nnc_symbolic_graph_t ;
struct TYPE_12__ {int rnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCV_NNC_TENSOR_SYMBOL_DEAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_7__*,int) ; 

void FUNC5(ccv_nnc_symbolic_graph_t* const graph, ccv_nnc_tensor_symbol_t tensor)
{
	FUNC1(graph == tensor.graph);
	FUNC1(tensor.d < graph->tensor_symbol_info->rnum);
	ccv_nnc_tensor_symbol_info_t* const symbol_info = (ccv_nnc_tensor_symbol_info_t*)FUNC4(graph->tensor_symbol_info, tensor.d);
	if (symbol_info->s_ref)
	{
		FUNC3(symbol_info->s_ref);
		symbol_info->s_ref = 0;
	}
	if (symbol_info->name)
	{
		FUNC2(symbol_info->name);
		symbol_info->name = 0;
	}
	symbol_info->flags |= CCV_NNC_TENSOR_SYMBOL_DEAD;
	int i;
	for (i = graph->tensor_symbol_info->rnum - 1; i >= 0; i--)
		if (!FUNC0(((ccv_nnc_tensor_symbol_info_t*)FUNC4(graph->tensor_symbol_info, i))->flags))
		{
			graph->tensor_symbol_info->rnum = i + 1;
			break;
		}
	if (tensor.d < graph->tensor_symbol_info->rnum &&
		(tensor.d < graph->reuse.tensor || graph->reuse.tensor < 0))
		graph->reuse.tensor = tensor.d;
	else if (graph->reuse.tensor >= graph->tensor_symbol_info->rnum)
		graph->reuse.tensor = -1;
}