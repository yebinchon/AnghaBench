#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int kind; int repeat; } ;
typedef  TYPE_3__ ccv_nnc_tensor_multiview_t ;
struct TYPE_13__ {int name; uintptr_t start_ptr; uintptr_t tensor_ref; size_t end_ptr; } ;
typedef  TYPE_4__ ccv_nnc_tensor_dot_t ;
struct TYPE_11__ {int /*<<< orphan*/  dim; } ;
struct TYPE_10__ {scalar_t__ u8; } ;
struct TYPE_14__ {int /*<<< orphan*/  type; TYPE_2__ info; TYPE_1__ data; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_7__*) ; 
 TYPE_7__** FUNC2 (TYPE_3__ const* const) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(const ccv_nnc_tensor_multiview_t* const mv, ccv_nnc_tensor_dot_t* const tensor_dots, int* tensor_index)
{
	const int count = mv->kind + mv->repeat;
	int i;
	for (i = 0; i < count; i++)
		if (FUNC1(FUNC2(mv)[i]))
			FUNC4((ccv_nnc_tensor_multiview_t*)FUNC2(mv)[i], tensor_dots, tensor_index);
		else {
			tensor_dots[*tensor_index].name = *tensor_index;
			tensor_dots[*tensor_index].start_ptr =  (uintptr_t)FUNC2(mv)[i]->data.u8;
			// Because tv's pointer will get updated, it is not correct in this case to have one tensor_ref.
			tensor_dots[*tensor_index].tensor_ref = tensor_dots[*tensor_index].start_ptr;
			const size_t dim_size = FUNC3(FUNC2(mv)[i]->info.dim) * FUNC0(FUNC2(mv)[i]->type);
			tensor_dots[*tensor_index].end_ptr = tensor_dots[*tensor_index].start_ptr + dim_size - 1;
			++(*tensor_index);
		}
}