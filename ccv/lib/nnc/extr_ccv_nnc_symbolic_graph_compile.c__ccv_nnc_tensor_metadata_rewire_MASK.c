#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int kind; int repeat; TYPE_3__* sp; struct TYPE_10__* p; struct TYPE_10__* alias_ref; } ;
typedef  TYPE_1__ ccv_nnc_tensor_t ;
typedef  TYPE_1__ ccv_nnc_tensor_multiview_t ;
typedef  int /*<<< orphan*/  ccv_array_t ;
struct TYPE_11__ {int rnum; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__* const) ; 
 scalar_t__ FUNC1 (TYPE_1__* const) ; 
 TYPE_1__** FUNC2 (TYPE_1__*) ; 
 void* FUNC3 (int /*<<< orphan*/  const* const,int const) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (TYPE_3__*,int) ; 

__attribute__((used)) static ccv_nnc_tensor_t* FUNC6(const ccv_array_t* const tensor_metadata, ccv_nnc_tensor_t* const vt_tensor)
{
	// If the low bit is not 1, this is not a position (but a normal tensor pointer), just return directly.
	if (!FUNC1(vt_tensor))
		return vt_tensor;
	ccv_nnc_tensor_t* const tensor = FUNC3(tensor_metadata, (int)(intptr_t)vt_tensor);
	if (tensor->alias_ref && FUNC1(tensor->alias_ref))
	{
		const int alias_ref = tensor->alias_ref;
		tensor->alias_ref = (uintptr_t)FUNC3(tensor_metadata, (int)tensor->alias_ref);
		FUNC6(tensor_metadata, (ccv_nnc_tensor_t*)(intptr_t)alias_ref);
	}
	if (FUNC0(tensor))
	{
		ccv_nnc_tensor_multiview_t* mv = (ccv_nnc_tensor_multiview_t*)tensor;
		int i;
		const int count = mv->kind + mv->repeat;
		for (i = 0; i < count; i++)
		{
			if (FUNC1(FUNC2(mv)[i]))
			{
				const int pos = (int)(intptr_t)FUNC2(mv)[i];
				FUNC2(mv)[i] = FUNC3(tensor_metadata, (int)(intptr_t)FUNC2(mv)[i]);
				FUNC6(tensor_metadata, (ccv_nnc_tensor_t*)(intptr_t)pos);
			}
		}
		// No need to recursively do parent pointer, otherwise we are in deep rewire.
		if (mv->p && FUNC1(mv->p))
			mv->p = (ccv_nnc_tensor_multiview_t*)FUNC3(tensor_metadata, (int)(intptr_t)mv->p);
		if (mv->sp)
			for (i = 0; i < mv->sp->rnum; i++)
			{
				ccv_nnc_tensor_t** const tensor = (ccv_nnc_tensor_t**)FUNC5(mv->sp, i);
				if (FUNC1(*tensor))
				{
					const int pos = (int)(intptr_t)*tensor;
					*tensor = FUNC3(tensor_metadata, pos);
					FUNC4(!FUNC0(*tensor));
					FUNC6(tensor_metadata, (ccv_nnc_tensor_t*)(intptr_t)pos);
				}
			}
	}
	return tensor;
}