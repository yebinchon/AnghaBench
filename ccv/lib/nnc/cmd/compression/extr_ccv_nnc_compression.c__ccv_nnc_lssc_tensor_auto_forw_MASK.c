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
struct TYPE_5__ {scalar_t__ datatype; int* dim; } ;
typedef  TYPE_1__ ccv_nnc_tensor_param_t ;
typedef  int /*<<< orphan*/  ccv_nnc_hint_t ;
typedef  int /*<<< orphan*/  ccv_nnc_cmd_param_t ;

/* Variables and functions */
 scalar_t__ CCV_16F ; 
 int CCV_NNC_MAX_DIM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_1__ const,int const) ; 
 int FUNC2 (int*) ; 

__attribute__((used)) static void FUNC3(const ccv_nnc_cmd_param_t cmd, const ccv_nnc_tensor_param_t* inputs, const int input_size, const ccv_nnc_hint_t hint, ccv_nnc_tensor_param_t* outputs, const int output_size)
{
	int i, j;
	FUNC0(output_size <= input_size);
	for (i = 0; i < output_size; i++)
	{
		FUNC0(inputs[i].datatype == CCV_16F);
		const int nd = FUNC2(inputs[i].dim);
		const int hw = FUNC1(inputs[i], nd);
		outputs[i] = inputs[i];
		for (j = 0; j < CCV_NNC_MAX_DIM - 1; j++)
			outputs[i].dim[j + hw] = (inputs[i].dim[j + hw] + 3) / 4;
		outputs[i].dim[CCV_NNC_MAX_DIM - 1 + hw] = (inputs[i].dim[CCV_NNC_MAX_DIM - 1 + hw] + 3) / 4 * 4;
	}
}