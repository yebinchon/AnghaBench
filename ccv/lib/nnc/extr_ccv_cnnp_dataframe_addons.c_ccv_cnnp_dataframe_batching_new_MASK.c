#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ccv_cnnp_dataframe_t ;
typedef  int /*<<< orphan*/  ccv_cnnp_column_data_context_deinit_f ;
struct TYPE_4__ {int size; } ;
struct TYPE_5__ {int format; int batch_count; int group_count; TYPE_1__ tuple; } ;
typedef  TYPE_2__ ccv_cnnp_batch_context_t ;

/* Variables and functions */
 int const CCV_TENSOR_FORMAT_NCHW ; 
 int const CCV_TENSOR_FORMAT_NHWC ; 
 int /*<<< orphan*/  _ccv_cnnp_batching_deinit ; 
 int /*<<< orphan*/  _ccv_cnnp_batching_new ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ccfree ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ * const,int const* const,int const) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ * const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const,int const,TYPE_2__* const,int /*<<< orphan*/ ) ; 

ccv_cnnp_dataframe_t* FUNC4(ccv_cnnp_dataframe_t* const dataframe, const int* const column_idxs, const int column_idx_size, const int batch_count, const int group_count, const int format)
{
	FUNC0(format == CCV_TENSOR_FORMAT_NCHW || format == CCV_TENSOR_FORMAT_NHWC);
	FUNC0(column_idx_size >= 1);
	FUNC0(batch_count > 0);
	FUNC0(group_count > 0);
	const int derived = FUNC2(dataframe, column_idxs, column_idx_size);
	ccv_cnnp_batch_context_t* const batch = (ccv_cnnp_batch_context_t*)FUNC1(sizeof(ccv_cnnp_batch_context_t));
	batch->tuple.size = column_idx_size * group_count;
	batch->format = format;
	batch->batch_count = batch_count;
	batch->group_count = group_count;
	return FUNC3(dataframe, _ccv_cnnp_batching_new, _ccv_cnnp_batching_deinit, derived, batch_count * group_count, batch, (ccv_cnnp_column_data_context_deinit_f)ccfree);
}