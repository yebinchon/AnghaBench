#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {unsigned char* u8; float* f32; } ;
struct TYPE_8__ {int rows; int cols; TYPE_1__ data; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ ccv_dense_matrix_t ;

/* Variables and functions */
 int CCV_32F ; 
 int CCV_C1 ; 
 scalar_t__ FUNC0 (int,int) ; 
 TYPE_2__* FUNC1 (int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (float*,float*,int*,int,int,double,double) ; 
 int /*<<< orphan*/  for_block ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 

void FUNC6(ccv_dense_matrix_t* a, ccv_dense_matrix_t** b, double dx, double dy, double dxx, double dyy)
{
	ccv_dense_matrix_t* dc = FUNC1(a->rows, a->cols, CCV_32F | CCV_C1, 0, 0);
	ccv_dense_matrix_t* db = *b = FUNC1(a->rows, a->cols, CCV_32F | CCV_C1, 0, 0);
	unsigned char* a_ptr = a->data.u8;
	float* b_ptr = db->data.f32;
	int i, j;
#define for_block(_, _for_get) \
	for (i = 0; i < a->rows; i++) \
	{ \
		for (j = 0; j < a->cols; j++) \
			b_ptr[j] = _for_get(a_ptr, j, 0); \
		b_ptr += db->cols; \
		a_ptr += a->step; \
	}
	FUNC3(a->type, for_block);
#undef for_block
	int* ix = (int*)FUNC0(a->cols * a->rows, sizeof(int));
	int* iy = (int*)FUNC0(a->cols * a->rows, sizeof(int));
	b_ptr = db->data.f32;
	float* c_ptr = dc->data.f32;
	for (i = 0; i < a->rows; i++)
		FUNC4(b_ptr + i * a->cols, c_ptr + i * a->cols, ix + i * a->cols, 1, a->cols, dxx, dx);
	for (j = 0; j < a->cols; j++)
		FUNC4(c_ptr + j, b_ptr + j, iy + j, a->cols, a->rows, dyy, dy);
	FUNC5(ix);
	FUNC5(iy);
	FUNC2(dc);
}