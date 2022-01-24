#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ccv_filter_kernel_f ;
struct TYPE_5__ {unsigned char* u8; } ;
struct TYPE_6__ {int rows; int cols; int /*<<< orphan*/  type; TYPE_1__ data; } ;
typedef  TYPE_2__ ccv_dense_matrix_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  for_block ; 

void FUNC3(ccv_dense_matrix_t* x, ccv_filter_kernel_f func, void* data)
{
	int i, j, k, ch = FUNC0(x->type);
	unsigned char* m_ptr = x->data.u8;
	double rows_2 = (x->rows - 1) * 0.5;
	double cols_2 = (x->cols - 1) * 0.5;
#define for_block(_, _for_set) \
	for (i = 0; i < x->rows; i++) \
	{ \
		for (j = 0; j < x->cols; j++) \
		{ \
			double result = func(j - cols_2, i - rows_2, data); \
			for (k = 0; k < ch; k++) \
				_for_set(m_ptr, j * ch + k, result, 0); \
		} \
		m_ptr += x->step; \
	}
	FUNC2(x->type, for_block);
#undef for_block
	FUNC1(x);
}