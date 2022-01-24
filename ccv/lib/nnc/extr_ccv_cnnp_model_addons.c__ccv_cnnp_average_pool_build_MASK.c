#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ccv_nnc_tensor_symbol_t ;
struct TYPE_10__ {scalar_t__* dim; } ;
typedef  TYPE_2__ ccv_nnc_tensor_param_t ;
typedef  int /*<<< orphan*/  ccv_nnc_symbolic_graph_t ;
typedef  int /*<<< orphan*/  ccv_nnc_graph_exec_symbol_t ;
typedef  int /*<<< orphan*/  ccv_nnc_cmd_t ;
typedef  int /*<<< orphan*/  ccv_cnnp_model_t ;
struct TYPE_9__ {int /*<<< orphan*/  hint; } ;
struct TYPE_11__ {scalar_t__* kdim; TYPE_1__ params; } ;
typedef  TYPE_3__ ccv_cnnp_model_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ * const,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__ const*,int,int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 int FUNC6 (TYPE_2__ const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ * const,TYPE_2__,int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC9 (int /*<<< orphan*/ * const,int /*<<< orphan*/  const) ; 

__attribute__((used)) static void FUNC10(ccv_cnnp_model_t* const super, ccv_nnc_symbolic_graph_t* const graph, const ccv_nnc_tensor_symbol_t* const inputs, const int input_size, ccv_nnc_tensor_symbol_t* const outputs, const int output_size)
{
	FUNC2(input_size == 1);
	FUNC2(output_size == 1);
	ccv_cnnp_model_pool_t* const self = (ccv_cnnp_model_pool_t*)super;
	const ccv_nnc_tensor_param_t params = FUNC9(graph, inputs[0]);
	const int hw = FUNC6(params, FUNC7(params.dim));
	ccv_nnc_cmd_t cmd;
	if (hw >= 0 && self->kdim[0] == 0 && self->kdim[1] == 0)
		cmd = FUNC0(params.dim[hw], params.dim[hw + 1]);
	else
		cmd = FUNC0(self->kdim[0], self->kdim[1]);
	ccv_nnc_tensor_param_t output_params;
	FUNC5(cmd, &params, 1, self->params.hint, &output_params, 1);
	const ccv_nnc_tensor_symbol_t pool_output = FUNC8(graph, output_params, 0);
	const ccv_nnc_graph_exec_symbol_t exec = FUNC3(graph, cmd, FUNC1(inputs[0]), FUNC1(pool_output), 0);
	FUNC4(graph, exec, self->params.hint);
	outputs[0] = pool_output;
}