#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {float* f32; } ;
struct TYPE_9__ {int cols; int rows; TYPE_1__ data; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ ccv_dense_matrix_t ;

/* Variables and functions */
 int CCV_32F ; 
 int CCV_C1 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (float*) ; 
 scalar_t__ FUNC4 (int) ; 
 TYPE_2__* FUNC5 (TYPE_2__*,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 float FUNC7 (float) ; 

__attribute__((used)) static void FUNC8(ccv_dense_matrix_t* a, ccv_dense_matrix_t** b, int type)
{
	FUNC2(FUNC0(a->type) == CCV_C1);
	FUNC2(FUNC1(a->type) == CCV_32F);
	ccv_dense_matrix_t* db = *b = FUNC5(*b, 1, a->cols, CCV_32F | CCV_C1, CCV_32F | CCV_C1, 0);
	FUNC6(db);
	int i, j;
	float* aptr = a->data.f32;
	float* bptr = db->data.f32;
	float* cptr = (float*)FUNC4(sizeof(float) * a->cols);
	for (i = 0; i < a->rows; i++)
	{
		double max = aptr[0];
		for (j = 1; j < a->cols; j++)
			if (aptr[j] > max)
				max = aptr[j];
		double tt = 0;
		for (j = 0; j < a->cols; j++)
			tt += (cptr[j] = FUNC7(aptr[j] - max));
		tt = 1.0 / tt;
		for (j = 0; j < a->cols; j++)
			bptr[j] += cptr[j] * tt;
		aptr += a->cols;
	}
	FUNC3(cptr);
}