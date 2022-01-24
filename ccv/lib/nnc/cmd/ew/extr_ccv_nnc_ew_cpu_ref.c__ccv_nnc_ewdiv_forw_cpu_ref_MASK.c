#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {float* f32; } ;
struct TYPE_13__ {scalar_t__* dim; } ;
struct TYPE_12__ {TYPE_1__ data; TYPE_6__ info; } ;
typedef  TYPE_2__ ccv_nnc_tensor_view_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__* const) ; 
 int CCV_NNC_MAX_DIM ; 
 int CCV_NNC_MAX_DIM_ALLOC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_6__) ; 
 int FUNC3 (TYPE_2__* const,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__* const,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__* const,int*) ; 

__attribute__((used)) static void FUNC6(const float p, ccv_nnc_tensor_view_t* const a, ccv_nnc_tensor_view_t* const b, ccv_nnc_tensor_view_t* const c)
{
	// Assuming this is float 32.
	int dim[CCV_NNC_MAX_DIM_ALLOC];
	int ainc[CCV_NNC_MAX_DIM_ALLOC];
	int binc[CCV_NNC_MAX_DIM_ALLOC];
	int cinc[CCV_NNC_MAX_DIM_ALLOC];
	if (a == 0) // Take 0 as all ones tensor.
	{
		FUNC1(b->info.dim[CCV_NNC_MAX_DIM + 2] == 0);
		FUNC1(c->info.dim[CCV_NNC_MAX_DIM + 2] == 0);
		FUNC4(b, dim);
		FUNC1(FUNC3(c, dim));
		int x;
		if (!FUNC0(b) && !FUNC0(c))
		{
			// Super optimal case, just do one for-loop for sum.
			const int tensor_count = FUNC2(b->info);
			for (x = 0; x < tensor_count; x++)
				c->data.f32[x] = p / b->data.f32[x];
			return;
		}
		FUNC1(CCV_NNC_MAX_DIM == 2); // Need to change this logic for CCV_NNC_MAX_DIM == other number.
		FUNC5(b, binc);
		FUNC5(c, cinc);
		int i[CCV_NNC_MAX_DIM + 2];
		float* bp = b->data.f32;
		float* cp = c->data.f32;
		const int count = dim[2] * dim[3];
		if (binc[3] == dim[3] && cinc[3] == dim[3])
		{
			// Special casing if the ainc[3] is the same as dim[3]
			for (i[0] = 0; i[0] < dim[0]; i[0]++)
			{
				for (i[1] = 0; i[1] < dim[1]; i[1]++)
				{
					for (x = 0; x < count; x++)
						cp[x] = p / bp[x];
					bp += binc[2] * binc[3];
					cp += cinc[2] * cinc[3];
				}
				bp += (binc[1] - dim[1]) * binc[2] * binc[3];
				cp += (cinc[1] - dim[1]) * cinc[2] * cinc[3];
			}
			return;
		}
		// Non-optimal case, need to do skip copy.
		for (i[0] = 0; i[0] < dim[0]; i[0]++)
		{
			for (i[1] = 0; i[1] < dim[1]; i[1]++)
			{
				for (i[2] = 0; i[2] < dim[2]; i[2]++)
				{
					for (x = 0; x < dim[3]; x++)
						cp[x] = p / bp[x];
					bp += binc[3];
					cp += cinc[3];
				}
				bp += (binc[2] - dim[2]) * binc[3];
				cp += (cinc[2] - dim[2]) * cinc[3];
			}
			bp += (binc[1] - dim[1]) * binc[2] * binc[3];
			cp += (cinc[1] - dim[1]) * cinc[2] * cinc[3];
		}
	} else {
		FUNC1(a->info.dim[CCV_NNC_MAX_DIM + 2] == 0);
		FUNC1(b->info.dim[CCV_NNC_MAX_DIM + 2] == 0);
		FUNC1(c->info.dim[CCV_NNC_MAX_DIM + 2] == 0);
		FUNC4(a, dim);
		FUNC1(FUNC3(b, dim));
		FUNC1(FUNC3(c, dim));
		int x;
		if (!FUNC0(a) && !FUNC0(b) && !FUNC0(c))
		{
			// Super optimal case, just do one for-loop for sum.
			const int tensor_count = FUNC2(a->info);
			for (x = 0; x < tensor_count; x++)
				c->data.f32[x] = p * a->data.f32[x] / b->data.f32[x];
			return;
		}
		FUNC1(CCV_NNC_MAX_DIM == 2); // Need to change this logic for CCV_NNC_MAX_DIM == other number.
		FUNC5(a, ainc);
		FUNC5(b, binc);
		FUNC5(c, cinc);
		int i[CCV_NNC_MAX_DIM + 2];
		float* ap = a->data.f32;
		float* bp = b->data.f32;
		float* cp = c->data.f32;
		const int count = dim[2] * dim[3];
		if (ainc[3] == dim[3] && binc[3] == dim[3] && cinc[3] == dim[3])
		{
			// Special casing if the ainc[3] is the same as dim[3]
			for (i[0] = 0; i[0] < dim[0]; i[0]++)
			{
				for (i[1] = 0; i[1] < dim[1]; i[1]++)
				{
					for (x = 0; x < count; x++)
						cp[x] = p * ap[x] / bp[x];
					ap += ainc[2] * ainc[3];
					bp += binc[2] * binc[3];
					cp += cinc[2] * cinc[3];
				}
				ap += (ainc[1] - dim[1]) * ainc[2] * ainc[3];
				bp += (binc[1] - dim[1]) * binc[2] * binc[3];
				cp += (cinc[1] - dim[1]) * cinc[2] * cinc[3];
			}
			return;
		}
		// Non-optimal case, need to do skip copy.
		for (i[0] = 0; i[0] < dim[0]; i[0]++)
		{
			for (i[1] = 0; i[1] < dim[1]; i[1]++)
			{
				for (i[2] = 0; i[2] < dim[2]; i[2]++)
				{
					for (x = 0; x < dim[3]; x++)
						cp[x] = p * ap[x] / bp[x];
					ap += ainc[3];
					bp += binc[3];
					cp += cinc[3];
				}
				ap += (ainc[2] - dim[2]) * ainc[3];
				bp += (binc[2] - dim[2]) * binc[3];
				cp += (cinc[2] - dim[2]) * cinc[3];
			}
			ap += (ainc[1] - dim[1]) * ainc[2] * ainc[3];
			bp += (binc[1] - dim[1]) * binc[2] * binc[3];
			cp += (cinc[1] - dim[1]) * cinc[2] * cinc[3];
		}
	}
}