#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {float* u8; float* f32; } ;
struct TYPE_12__ {scalar_t__ datatype; } ;
struct TYPE_11__ {TYPE_1__ data; TYPE_6__ info; } ;
typedef  TYPE_2__ const ccv_nnc_tensor_view_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__ const* const) ; 
 int CCV_NNC_MAX_DIM ; 
 int CCV_NNC_MAX_DIM_ALLOC ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (TYPE_6__) ; 
 int FUNC4 (TYPE_2__ const* const,int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__ const* const,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__ const* const,int*) ; 
 int /*<<< orphan*/  FUNC7 (float*,float*,int) ; 

void FUNC8(const ccv_nnc_tensor_view_t* const a, ccv_nnc_tensor_view_t* const b)
{
	// Assuming this is float 32.
	FUNC2(a->info.datatype == b->info.datatype);
	if (!FUNC1(a) && !FUNC1(b))
	{
		// Super optimal case, just do memcpy.
		FUNC7(b->data.u8, a->data.u8, FUNC3(a->info) * FUNC0(a->info.datatype));
		return;
	}
	int dim[CCV_NNC_MAX_DIM_ALLOC];
	int ainc[CCV_NNC_MAX_DIM_ALLOC];
	int binc[CCV_NNC_MAX_DIM_ALLOC];
	FUNC5(a, dim);
	FUNC2(FUNC4(b, dim));
	FUNC6(a, ainc);
	FUNC6(b, binc);
	FUNC2(CCV_NNC_MAX_DIM == 2); // Need to change this logic for CCV_NNC_MAX_DIM == other number.
	int i[CCV_NNC_MAX_DIM + 2];
	float* ap = a->data.f32;
	float* bp = b->data.f32;
	if (ainc[3] == dim[3] && binc[3] == dim[3])
	{
		// Special casing if the ainc[3] is the same as dim[3] (do memcpy for the last two dim)
		for (i[0] = 0; i[0] < dim[0]; i[0]++)
		{
			for (i[1] = 0; i[1] < dim[1]; i[1]++)
			{
				FUNC7(bp, ap, dim[2] * dim[3] * sizeof(float));
				ap += ainc[2] * ainc[3];
				bp += binc[2] * binc[3];
			}
			ap += (ainc[1] - dim[1]) * ainc[2] * ainc[3];
			bp += (binc[1] - dim[1]) * binc[2] * binc[3];
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
				FUNC7(bp, ap, dim[3] * sizeof(float));
				ap += ainc[3];
				bp += binc[3];
			}
			ap += (ainc[2] - dim[2]) * ainc[3];
			bp += (binc[2] - dim[2]) * binc[3];
		}
		ap += (ainc[1] - dim[1]) * ainc[2] * ainc[3];
		bp += (binc[1] - dim[1]) * binc[2] * binc[3];
	}
}