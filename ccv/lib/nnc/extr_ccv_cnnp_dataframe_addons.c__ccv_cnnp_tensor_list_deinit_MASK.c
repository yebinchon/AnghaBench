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
typedef  int /*<<< orphan*/  ccv_nnc_tensor_t ;
struct TYPE_2__ {int size; } ;
typedef  TYPE_1__ ccv_cnnp_dataframe_tuple_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ** const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void* const data, void* const context)
{
	ccv_cnnp_dataframe_tuple_t* const tuple = (ccv_cnnp_dataframe_tuple_t*)context;
	ccv_nnc_tensor_t** const tensor_list = (ccv_nnc_tensor_t**)data;
	int i;
	for (i = 0; i < tuple->size; i++)
		if (tensor_list[i])
			FUNC1(tensor_list[i]);
	FUNC0(tensor_list);
}