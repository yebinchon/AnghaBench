#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct ccv_nnc_tensor_variable_s {int dummy; } ;
typedef  TYPE_1__* ccv_nnc_tensor_variable_t ;
typedef  int /*<<< orphan*/  ccv_nnc_tensor_param_t ;
struct TYPE_11__ {int reuse_var; TYPE_6__* vars; } ;
typedef  TYPE_2__ ccv_nnc_dynamic_graph_t ;
struct TYPE_12__ {int const rnum; } ;
struct TYPE_10__ {int alias_ref; int index; int /*<<< orphan*/  inc; int /*<<< orphan*/  ofs; scalar_t__ tensor_view; int /*<<< orphan*/  symbol; int /*<<< orphan*/  info; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int CCV_NNC_MAX_DIM_ALLOC ; 
 int /*<<< orphan*/  NO_TENSOR_SYMBOL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_6__*,int const) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int const*,int) ; 

ccv_nnc_tensor_variable_t FUNC5(ccv_nnc_dynamic_graph_t* const graph, const ccv_nnc_tensor_variable_t tensor_variable, const int ofs[CCV_NNC_MAX_DIM_ALLOC], const int inc[CCV_NNC_MAX_DIM_ALLOC], const ccv_nnc_tensor_param_t info)
{
	FUNC0(!tensor_variable->alias_ref);
	ccv_nnc_tensor_variable_t variable_alias = FUNC1(sizeof(struct ccv_nnc_tensor_variable_s));
	variable_alias->type = tensor_variable->type;
	variable_alias->alias_ref = tensor_variable->index + 1;
	variable_alias->info = info;
	variable_alias->symbol = NO_TENSOR_SYMBOL;
	variable_alias->tensor_view = 0;
	FUNC4(variable_alias->ofs, ofs, sizeof(int) * CCV_NNC_MAX_DIM_ALLOC);
	FUNC4(variable_alias->inc, inc, sizeof(int) * CCV_NNC_MAX_DIM_ALLOC);
	if (graph->reuse_var >= 0)
	{
		const int reuse_var = graph->reuse_var;
		FUNC0(reuse_var < graph->vars->rnum);
		variable_alias->index = reuse_var;
		*(ccv_nnc_tensor_variable_t*)FUNC2(graph->vars, reuse_var) = variable_alias;
		int i;
		graph->reuse_var = -1;
		for (i = reuse_var + 1; i < graph->vars->rnum && graph->reuse_var < 0; i++)
			if (*(ccv_nnc_tensor_variable_t*)FUNC2(graph->vars, i) == 0)
				graph->reuse_var = i;
	} else {
		variable_alias->index = graph->vars->rnum;
		FUNC3(graph->vars, &variable_alias);
	}
	return variable_alias;
}