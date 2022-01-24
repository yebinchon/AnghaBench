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
struct TYPE_5__ {int cols; double rows; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ ccv_dense_matrix_t ;
struct TYPE_6__ {int di; int si; float alpha; } ;
typedef  TYPE_2__ ccv_area_alpha_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ccv_matrix_setter ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  for_block ; 

__attribute__((used)) static void FUNC5(ccv_dense_matrix_t* a, ccv_dense_matrix_t* b)
{
	FUNC2(a->cols > 0 && b->cols > 0);
	ccv_area_alpha_t* xofs = (ccv_area_alpha_t*)FUNC1(sizeof(ccv_area_alpha_t) * a->cols * 2);
	int ch = FUNC0(a->type);
	double scale_x = (double)a->cols / b->cols;
	double scale_y = (double)a->rows / b->rows;
	double scale = 1.f / (scale_x * scale_y);
	int dx, dy, sx, sy, i, k;
	for (dx = 0, k = 0; dx < b->cols; dx++)
	{
		double fsx1 = dx * scale_x, fsx2 = fsx1 + scale_x;
		int sx1 = (int)(fsx1 + 1.0 - 1e-6), sx2 = (int)(fsx2);
		sx1 = FUNC4(sx1, a->cols - 1);
		sx2 = FUNC4(sx2, a->cols - 1);

		if (sx1 > fsx1)
		{
			xofs[k].di = dx * ch;
			xofs[k].si = (sx1 - 1) * ch;
			xofs[k++].alpha = (float)((sx1 - fsx1) * scale);
		}

		for (sx = sx1; sx < sx2; sx++)
		{
			xofs[k].di = dx * ch;
			xofs[k].si = sx * ch;
			xofs[k++].alpha = (float)scale;
		}

		if (fsx2 - sx2 > 1e-3)
		{
			xofs[k].di = dx * ch;
			xofs[k].si = sx2 * ch;
			xofs[k++].alpha = (float)((fsx2 - sx2) * scale);
		}
	}
	int xofs_count = k;
	float* buf = (float*)FUNC1(b->cols * ch * sizeof(float));
	float* sum = (float*)FUNC1(b->cols * ch * sizeof(float));
	for (dx = 0; dx < b->cols * ch; dx++)
		buf[dx] = sum[dx] = 0;
	dy = 0;
#define for_block(_for_get, _for_set) \
	for (sy = 0; sy < a->rows; sy++) \
	{ \
		unsigned char* a_ptr = a->data.u8 + a->step * sy; \
		for (k = 0; k < xofs_count; k++) \
		{ \
			int dxn = xofs[k].di; \
			float alpha = xofs[k].alpha; \
			for (i = 0; i < ch; i++) \
				buf[dxn + i] += _for_get(a_ptr, xofs[k].si + i, 0) * alpha; \
		} \
		if ((dy + 1) * scale_y <= sy + 1 || sy == a->rows - 1) \
		{ \
			float beta = ccv_max(sy + 1 - (dy + 1) * scale_y, 0.f); \
			float beta1 = 1 - beta; \
			unsigned char* b_ptr = b->data.u8 + b->step * dy; \
			if (fabs(beta) < 1e-3) \
			{ \
				for (dx = 0; dx < b->cols * ch; dx++) \
				{ \
					_for_set(b_ptr, dx, sum[dx] + buf[dx], 0); \
					sum[dx] = buf[dx] = 0; \
				} \
			} else { \
				for (dx = 0; dx < b->cols * ch; dx++) \
				{ \
					_for_set(b_ptr, dx, sum[dx] + buf[dx] * beta1, 0); \
					sum[dx] = buf[dx] * beta; \
					buf[dx] = 0; \
				} \
			} \
			dy++; \
		} \
		else \
		{ \
			for(dx = 0; dx < b->cols * ch; dx++) \
			{ \
				sum[dx] += buf[dx]; \
				buf[dx] = 0; \
			} \
		} \
	}
	FUNC3(a->type, ccv_matrix_setter, b->type, for_block);
#undef for_block
}