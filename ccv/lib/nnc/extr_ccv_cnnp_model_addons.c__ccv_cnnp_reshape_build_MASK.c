#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ccv_nnc_tensor_symbol_t ;
struct TYPE_5__ {int /*<<< orphan*/  dim; } ;
typedef  TYPE_1__ ccv_nnc_tensor_param_t ;
typedef  int /*<<< orphan*/  ccv_nnc_symbolic_graph_t ;
typedef  int /*<<< orphan*/  ccv_cnnp_model_t ;
struct TYPE_6__ {int /*<<< orphan*/  inc; int /*<<< orphan*/  ofs; int /*<<< orphan*/  dim; } ;
typedef  TYPE_2__ ccv_cnnp_model_reshape_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ * const,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC2 (int /*<<< orphan*/ * const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(ccv_cnnp_model_t* const super, ccv_nnc_symbolic_graph_t* const graph, const ccv_nnc_tensor_symbol_t* const inputs, const int input_size, ccv_nnc_tensor_symbol_t* const outputs, const int output_size)
{
	FUNC0(input_size == 1);
	FUNC0(output_size == 1);
	ccv_cnnp_model_reshape_t* const self = (ccv_cnnp_model_reshape_t*)super;
	ccv_nnc_tensor_param_t params = FUNC2(graph, inputs[0]);
	FUNC3(params.dim, self->dim, sizeof(params.dim));
	outputs[0] = FUNC1(graph, inputs[0], self->ofs, self->inc, params, 0);
}