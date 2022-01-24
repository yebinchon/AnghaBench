#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ccv_nnc_tensor_symbol_t ;
typedef  int /*<<< orphan*/  ccv_nnc_symbolic_graph_t ;
typedef  int /*<<< orphan*/  ccv_cnnp_model_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int /*<<< orphan*/  const* const,int const,int /*<<< orphan*/ * const,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ * const,int /*<<< orphan*/  const) ; 

__attribute__((used)) static void FUNC5(ccv_cnnp_model_t* const self, ccv_nnc_symbolic_graph_t* const graph, const ccv_nnc_tensor_symbol_t* const inputs, const int input_size, ccv_nnc_tensor_symbol_t* const outputs, const int output_size)
{
	FUNC1(output_size == 1);
	outputs[0] = FUNC3(graph, FUNC4(graph, inputs[0]), 0);
	FUNC2(graph, FUNC0(), inputs, input_size, outputs, output_size, 0);
}