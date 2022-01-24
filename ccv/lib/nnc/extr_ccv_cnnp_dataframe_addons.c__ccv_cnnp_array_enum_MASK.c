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
typedef  int /*<<< orphan*/  ccv_nnc_stream_context_t ;
typedef  int /*<<< orphan*/  ccv_array_t ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ * const,int const) ; 

__attribute__((used)) static void FUNC1(const int column_idx, const int* const row_idxs, const int row_size, void** const data, void* const context, ccv_nnc_stream_context_t* const stream_context)
{
	int i;
	ccv_array_t* const array = (ccv_array_t*)context;
	for (i = 0; i < row_size; i++)
		data[i] = FUNC0(array, row_idxs[i]);
}