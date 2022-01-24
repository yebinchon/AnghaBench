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
struct TYPE_7__ {float* f32; } ;
struct TYPE_8__ {TYPE_1__ data; int /*<<< orphan*/  info; } ;
typedef  TYPE_2__ ccv_nnc_tensor_view_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__* const) ; 
 int CCV_NNC_MAX_DIM ; 
 int CCV_NNC_MAX_DIM_ALLOC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__* const,int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__* const,int*) ; 

void FUNC5(ccv_nnc_tensor_view_t* const a, const float b)
{
	// Assuming this is float 32.
	int dim[CCV_NNC_MAX_DIM_ALLOC];
	int ainc[CCV_NNC_MAX_DIM_ALLOC];
	int x;
	if (!FUNC0(a))
	{
		// Super optimal case, just do one for-loop for sum.
		const int tensor_count = FUNC2(a->info);
		for (x = 0; x < tensor_count; x++)
			a->data.f32[x] = b;
		return;
	}
	FUNC1(CCV_NNC_MAX_DIM == 2); // Need to change this logic for CCV_NNC_MAX_DIM == other number.
	FUNC3(a, dim);
	FUNC4(a, ainc);
	int i[CCV_NNC_MAX_DIM + 2];
	float* ap = a->data.f32;
	const int count = dim[2] * dim[3];
	if (ainc[3] == dim[3])
	{
		// Special casing if the ainc[3] is the same as dim[3]
		for (i[0] = 0; i[0] < dim[0]; i[0]++)
		{
			for (i[1] = 0; i[1] < dim[1]; i[1]++)
			{
				for (x = 0; x < count; x++)
					ap[x] = b;
				ap += ainc[2] * ainc[3];
			}
			ap += (ainc[1] - dim[1]) * ainc[2] * ainc[3];
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
					ap[x] = b;
				ap += ainc[3];
			}
			ap += (ainc[2] - dim[2]) * ainc[3];
		}
		ap += (ainc[1] - dim[1]) * ainc[2] * ainc[3];
	}
}