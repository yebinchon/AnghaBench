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
typedef  int /*<<< orphan*/  ccv_matrix_t ;
struct TYPE_4__ {int /*<<< orphan*/ * f64; int /*<<< orphan*/ * f32; } ;
struct TYPE_5__ {int type; int rows; int cols; TYPE_1__ data; } ;
typedef  TYPE_2__ ccv_dense_matrix_t ;

/* Variables and functions */
 int CCV_32F ; 
 int CCV_64F ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(ccv_matrix_t *a)
{
	ccv_dense_matrix_t* da = FUNC2(a);
	FUNC1((da->type & CCV_32F) || (da->type & CCV_64F));
	int ch = FUNC0(da->type);
	int i;
	if (da->type & CCV_32F)
	{
		for (i = 0; i < da->rows * da->cols * ch; i++)
#ifdef isnanf
			if (isnanf(da->data.f32[i]))
#else
			if (FUNC3(da->data.f32[i]))
#endif
				return i + 1;
	} else {
		for (i = 0; i < da->rows * da->cols * ch; i++)
			if (FUNC3(da->data.f64[i]))
				return i + 1;
	}
	return 0;
}