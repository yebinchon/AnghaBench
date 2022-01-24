#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int* dim; int /*<<< orphan*/  datatype; } ;
typedef  TYPE_1__ ccv_nnc_tensor_param_t ;
typedef  int /*<<< orphan*/  ccv_nnc_hint_t ;
typedef  int /*<<< orphan*/  ccv_nnc_cmd_param_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int CCV_NNC_MAX_DIM_ALLOC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(const ccv_nnc_cmd_param_t cmd, const ccv_nnc_tensor_param_t* const inputs, const int input_size, const ccv_nnc_hint_t hint, ccv_nnc_tensor_param_t* const outputs, const int output_size)
{
	FUNC1(input_size == 1);
	FUNC1(output_size <= 2);
	outputs[0] = inputs[0];
	if (output_size == 1)
		return;
	outputs[1] = inputs[0];
	int i;
	// Reset to 0.
	FUNC2(outputs[1].dim, 0, sizeof(outputs[1].dim));
	const int inc = (int)FUNC0(inputs[0].datatype);
	// Align to 128-bytes boundary, for each computed result.
	int line = ((inputs[0].dim[0] + 127) >> 7);
	for (i = 1; i < CCV_NNC_MAX_DIM_ALLOC && inputs[0].dim[i] > 0; i++)
		line *= inputs[0].dim[i];
	FUNC1((128 % inc) == 0);
	outputs[1].dim[0] = 128 / inc;
	outputs[1].dim[1] = line; // Aligned to 128 bytes, reserved space.
}