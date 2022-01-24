#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ccv_nnc_tensor_variable_s {int dummy; } ;
typedef  TYPE_1__* ccv_nnc_tensor_variable_t ;
typedef  int /*<<< orphan*/  ccv_nnc_tensor_param_t ;
typedef  int /*<<< orphan*/  ccv_nnc_dynamic_graph_t ;
struct TYPE_5__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCV_NNC_TENSOR_VARIABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ * const,TYPE_1__*,int /*<<< orphan*/  const) ; 
 TYPE_1__* FUNC1 (int) ; 

ccv_nnc_tensor_variable_t FUNC2(ccv_nnc_dynamic_graph_t* const graph, const ccv_nnc_tensor_param_t info)
{
	ccv_nnc_tensor_variable_t tensor_variable = FUNC1(sizeof(struct ccv_nnc_tensor_variable_s));
	tensor_variable->type = CCV_NNC_TENSOR_VARIABLE;
	FUNC0(graph, tensor_variable, info);
	return tensor_variable;
}