#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ccv_nnc_tensor_symbol_t ;
struct TYPE_6__ {int* dim; } ;
typedef  TYPE_1__ ccv_nnc_tensor_param_t ;
typedef  int /*<<< orphan*/  ccv_nnc_symbolic_graph_t ;
typedef  int /*<<< orphan*/  ccv_cnnp_model_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__ const) ; 
 int FUNC3 (TYPE_1__ const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ * const,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int*,TYPE_1__,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC5 (int /*<<< orphan*/ * const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(ccv_cnnp_model_t* const super, ccv_nnc_symbolic_graph_t* const graph, const ccv_nnc_tensor_symbol_t* const inputs, const int input_size, ccv_nnc_tensor_symbol_t* const outputs, const int output_size)
{
	FUNC1(input_size == 1);
	FUNC1(output_size == 1);
	const ccv_nnc_tensor_param_t params = FUNC5(graph, inputs[0]);
	ccv_nnc_tensor_param_t output_params = params;
	FUNC6(output_params.dim, 0, sizeof(output_params.dim));
	output_params.dim[0] = FUNC3(params);
	FUNC1(output_params.dim[0] > 0);
	output_params.dim[1] = FUNC2(params) / output_params.dim[0];
	outputs[0] = FUNC4(graph, inputs[0], FUNC0(), output_params.dim, output_params, 0);
}