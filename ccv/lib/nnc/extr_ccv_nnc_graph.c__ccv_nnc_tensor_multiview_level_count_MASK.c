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
typedef  int /*<<< orphan*/  ccv_nnc_tensor_t ;
struct TYPE_5__ {int kind; int repeat; } ;
typedef  TYPE_1__ ccv_nnc_tensor_multiview_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const* const) ; 
 int /*<<< orphan*/ ** FUNC1 (TYPE_1__ const* const) ; 
 int /*<<< orphan*/ * CCV_NNC_TENSOR_PLACEHOLDER ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(const ccv_nnc_tensor_multiview_t* const mv)
{
	if (!FUNC0(mv))
		return 1;
	const int count = mv->kind + mv->repeat;
	int i, c = 0;
	for (i = 0; i < count; i++)
	{
		ccv_nnc_tensor_t* tv = FUNC1(mv)[i];
		if (tv == CCV_NNC_TENSOR_PLACEHOLDER)
			c = FUNC2(c, 1);
		else
			c = FUNC2(c, FUNC3((ccv_nnc_tensor_multiview_t*)tv));
	}
	return c + 1;
}