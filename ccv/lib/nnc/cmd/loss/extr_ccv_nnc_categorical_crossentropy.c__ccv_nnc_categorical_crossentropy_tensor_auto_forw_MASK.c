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
struct TYPE_6__ {int /*<<< orphan*/  dim; } ;
typedef  TYPE_1__ ccv_nnc_tensor_param_t ;
typedef  int /*<<< orphan*/  ccv_nnc_hint_t ;
typedef  int /*<<< orphan*/  ccv_nnc_cmd_param_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int const,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(const ccv_nnc_cmd_param_t cmd, const ccv_nnc_tensor_param_t* const inputs, const int input_size, const ccv_nnc_hint_t hint, ccv_nnc_tensor_param_t* const outputs, const int output_size)
{
	FUNC0(input_size == 2);
	FUNC0(output_size == 1);
	outputs[0] = inputs[0];
	// The output should have the same dimentionality of the label data.
	FUNC4(outputs[0].dim, inputs[1].dim, sizeof(outputs[0].dim));
	const int nd = FUNC2(outputs[0].dim);
	// Set channel to 1 if it is not..
	if (nd > 1 && FUNC1(outputs[0]) > 1)
		FUNC3(&outputs[0], nd, 1);
}