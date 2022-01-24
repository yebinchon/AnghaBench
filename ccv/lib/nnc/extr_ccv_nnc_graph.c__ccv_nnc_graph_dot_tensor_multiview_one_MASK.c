#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_13__ {int kind; int repeat; } ;
typedef  TYPE_3__ ccv_nnc_tensor_multiview_t ;
struct TYPE_14__ {size_t zone; } ;
typedef  TYPE_4__ ccv_nnc_tensor_dot_t ;
struct TYPE_15__ {int* remap; int* rename_zone; TYPE_4__* dots; } ;
typedef  TYPE_5__ ccv_nnc_tensor_dot_recovery_t ;
struct TYPE_12__ {int /*<<< orphan*/  dim; } ;
struct TYPE_11__ {int /*<<< orphan*/  u8; } ;
struct TYPE_16__ {int /*<<< orphan*/  type; TYPE_2__ info; TYPE_1__ data; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_8__*) ; 
 TYPE_8__** FUNC2 (TYPE_3__ const* const) ; 
 int CCV_NNC_MULTIVIEW_K0N ; 
 int CCV_NNC_MULTIVIEW_K1N ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(const ccv_nnc_tensor_multiview_t* const mv, const ccv_nnc_tensor_dot_recovery_t recovery, const int depth, int* tensor_index, FILE* out)
{
	const int count = mv->kind + mv->repeat;
	int i, j;
	FUNC6("|{", out);
	for (i = 0; i < count; i++)
		if (FUNC1(FUNC2(mv)[i]))
		{
			FUNC4(out, "{%d", i);
			if (mv->kind == CCV_NNC_MULTIVIEW_K0N || (mv->kind == CCV_NNC_MULTIVIEW_K1N && i > 0))
				FUNC5('*', out); // Denotes that we loop on this.
			FUNC7((ccv_nnc_tensor_multiview_t*)FUNC2(mv)[i], recovery, depth, tensor_index, out);
			if (i == count - 1)
				FUNC5('}', out);
			else
				FUNC6("}|", out);
		} else {
			FUNC4(out, "{%d", i);
			if (mv->kind == CCV_NNC_MULTIVIEW_K0N || (mv->kind == CCV_NNC_MULTIVIEW_K1N && i > 0))
				FUNC5('*', out); // Denotes that we loop on this.
			const ccv_nnc_tensor_dot_t* const tensor_dot = recovery.dots + recovery.remap[*tensor_index];
			FUNC4(out, "|zone%d", recovery.rename_zone[tensor_dot->zone]);
			for (j = 0; j < depth; j++)
				FUNC5('\'', out);
			uintptr_t aptr = (uintptr_t)FUNC2(mv)[i]->data.u8;
			// For the last one, we don't extend to full ainc.
			size_t dim_size = FUNC3(FUNC2(mv)[i]->info.dim) * FUNC0(FUNC2(mv)[i]->type);
			// Print out the range as well.
			FUNC4(out, "|{%#010x|%#010x}", (uint32_t)aptr, (uint32_t)(aptr + dim_size - 1));
			++(*tensor_index);
			if (i == count - 1)
				FUNC5('}', out);
			else
				FUNC6("}|", out);
		}
	FUNC5('}', out);
}