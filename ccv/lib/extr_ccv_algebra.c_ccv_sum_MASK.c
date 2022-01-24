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
struct TYPE_4__ {unsigned char* u8; } ;
struct TYPE_5__ {int /*<<< orphan*/  type; TYPE_1__ data; } ;
typedef  TYPE_2__ ccv_dense_matrix_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  for_block ; 

double FUNC3(ccv_matrix_t* mat, int flag)
{
	ccv_dense_matrix_t* dmt = FUNC1(mat);
	double sum = 0;
	unsigned char* m_ptr = dmt->data.u8;
	int i, j, ch = FUNC0(dmt->type);
#define for_block(_, _for_get) \
	switch (flag) \
	{ \
		case CCV_UNSIGNED: \
			for (i = 0; i < dmt->rows; i++) \
			{ \
				for (j = 0; j < dmt->cols * ch; j++) \
					sum += fabs((double)(_for_get(m_ptr, j, 0))); \
				m_ptr += dmt->step; \
			} \
			break; \
		case CCV_SIGNED: \
		default: \
			for (i = 0; i < dmt->rows; i++) \
			{ \
				for (j = 0; j < dmt->cols * ch; j++) \
					sum += _for_get(m_ptr, j, 0); \
				m_ptr += dmt->step; \
			} \
	}
	FUNC2(dmt->type, for_block);
#undef for_block
	return sum;
}