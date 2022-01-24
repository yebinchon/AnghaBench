#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  dim; int /*<<< orphan*/  datatype; int /*<<< orphan*/  format; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ ccv_nnc_tensor_param_t ;
typedef  int /*<<< orphan*/  ccv_nnc_hint_t ;
struct TYPE_13__ {int const count; } ;
struct TYPE_15__ {TYPE_1__ convolution; } ;
typedef  TYPE_3__ ccv_nnc_cmd_param_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__ const,TYPE_2__ const,int /*<<< orphan*/  const,TYPE_2__*) ; 
 int FUNC2 (TYPE_2__ const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int) ; 

__attribute__((used)) static void FUNC6(const ccv_nnc_cmd_param_t cmd, const ccv_nnc_tensor_param_t* inputs, const int input_size, const ccv_nnc_hint_t hint, ccv_nnc_tensor_param_t* outputs, const int output_size)
{
	FUNC0(output_size == 1);
	outputs[0].type = inputs[0].type;
	outputs[0].format = inputs[0].format;
	outputs[0].datatype = inputs[0].datatype;
	// Get the channel output from the weight matrix.
	const int count = FUNC2(inputs[1]);
	FUNC0(count == cmd.convolution.count);
	FUNC4(outputs, FUNC3(inputs[0].dim), count);
	FUNC5(outputs, FUNC2(inputs[0]));
	FUNC1(cmd, inputs[0], hint, outputs);
}