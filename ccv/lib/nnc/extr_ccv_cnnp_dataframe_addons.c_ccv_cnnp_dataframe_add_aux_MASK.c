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
struct TYPE_4__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ ccv_nnc_tensor_param_t ;
typedef  int /*<<< orphan*/  ccv_cnnp_dataframe_t ;
typedef  int /*<<< orphan*/  ccv_cnnp_column_data_context_deinit_f ;

/* Variables and functions */
 int CCV_STREAM_CONTEXT_GPU ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ CCV_TENSOR_CPU_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _ccv_cnnp_tensor_deinit ; 
 int /*<<< orphan*/  _ccv_cnnp_tensor_new ; 
 scalar_t__ ccfree ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_1__* const,int /*<<< orphan*/ ) ; 

int FUNC5(ccv_cnnp_dataframe_t* const dataframe, const ccv_nnc_tensor_param_t params)
{
	int stream_type = FUNC2(params.type) == CCV_TENSOR_CPU_MEMORY ? 0 : CCV_STREAM_CONTEXT_GPU;
	if (stream_type == CCV_STREAM_CONTEXT_GPU)
		FUNC0(stream_type, FUNC1(params.type));
	ccv_nnc_tensor_param_t* const context = (ccv_nnc_tensor_param_t*)FUNC3(sizeof(ccv_nnc_tensor_param_t));
	context[0] = params;
	return FUNC4(dataframe, _ccv_cnnp_tensor_new, stream_type, _ccv_cnnp_tensor_deinit, context, (ccv_cnnp_column_data_context_deinit_f)ccfree);
}