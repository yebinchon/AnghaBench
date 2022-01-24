#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ccv_nnc_stream_context_t ;
struct TYPE_2__ {int iter_idx; int const batch_size; int /*<<< orphan*/  context; scalar_t__ batch_data; int /*<<< orphan*/  (* reduce ) (scalar_t__,int,void** const,int /*<<< orphan*/ ,int /*<<< orphan*/ * const) ;int /*<<< orphan*/ * iter; int /*<<< orphan*/  column_idx; int /*<<< orphan*/  dataframe; } ;
typedef  TYPE_1__ ccv_cnnp_dataframe_reducer_t ;
typedef  int /*<<< orphan*/  ccv_cnnp_dataframe_iter_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ * const,scalar_t__,int,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ * const,int const,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ * const,int const) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,void** const,int /*<<< orphan*/ ,int /*<<< orphan*/ * const) ; 

__attribute__((used)) static void FUNC5(const int column_idx, const int* const row_idxs, const int row_size, void** const data, void* const context, ccv_nnc_stream_context_t* const stream_context)
{
	ccv_cnnp_dataframe_reducer_t* const reducer = (ccv_cnnp_dataframe_reducer_t*)context;
	if (!reducer->iter)
	{
		reducer->iter = FUNC0(reducer->dataframe, &reducer->column_idx, 1);
		reducer->iter_idx = -1;
	}
	ccv_cnnp_dataframe_iter_t* const iter = reducer->iter;
	int i, j;
	for (i = 0; i < row_size; i++)
	{
		if (reducer->iter_idx + 1 != row_idxs[i])
			FUNC3(iter, row_idxs[i] * reducer->batch_size);
		reducer->iter_idx = row_idxs[i];
		FUNC2(iter, reducer->batch_size, stream_context);
		for (j = 0; j < reducer->batch_size; j++)
			if (0 != FUNC1(iter, reducer->batch_data + j, 1, stream_context))
				break;
		reducer->reduce(reducer->batch_data, j, data + i, reducer->context, stream_context);
	}
}