#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int* dim; } ;
struct TYPE_15__ {TYPE_1__ info; } ;
typedef  TYPE_2__ ccv_nnc_tensor_t ;
struct TYPE_16__ {int /*<<< orphan*/  type; } ;
typedef  TYPE_3__ ccv_nnc_tensor_multiview_t ;
struct TYPE_17__ {size_t index; } ;
typedef  TYPE_4__ ccv_nnc_tensor_dot_t ;
struct TYPE_18__ {int* remap; int* rename_index; TYPE_4__* dots; } ;
typedef  TYPE_5__ ccv_nnc_tensor_dot_recovery_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__ const*) ; 
 int const CCV_NNC_LONG_DOT_GRAPH ; 
 int CCV_NNC_MAX_DIM_ALLOC ; 
 TYPE_2__** FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__ const* const) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__ const* const,TYPE_5__ const,int const,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(const ccv_nnc_tensor_multiview_t* const mv, const ccv_nnc_tensor_dot_recovery_t recovery, const int flags, const int depth, int* tensor_index, FILE* out)
{
	// if it has an alias pointer, or, it is a long form.
	if (flags == CCV_NNC_LONG_DOT_GRAPH)
		FUNC6('{', out);
	const ccv_nnc_tensor_dot_t* const tensor_dot = recovery.dots + recovery.remap[*tensor_index];
	FUNC5(out, "multiview%d", recovery.rename_index[tensor_dot->index]);
	int i;
	for (i = 0; i < depth; i++) // Print subscription to denote depth.
		FUNC6('\'', out);
	if (FUNC0(mv->type))
		FUNC7(" (t)", out);
	if (flags == CCV_NNC_LONG_DOT_GRAPH)
	{
		FUNC4(mv, recovery, depth, tensor_index, out);
		const ccv_nnc_tensor_t* root = (ccv_nnc_tensor_t*)mv;
		while (FUNC1(root))
			root = FUNC2((ccv_nnc_tensor_multiview_t*)root)[0];
		FUNC5(out, "|%d", root->info.dim[0]);
		for (i = 1; i < CCV_NNC_MAX_DIM_ALLOC && root->info.dim[i]; i++)
			FUNC5(out, "x%d", root->info.dim[i]);
		FUNC6('}', out);
	} else
		*tensor_index += FUNC3(mv);
}