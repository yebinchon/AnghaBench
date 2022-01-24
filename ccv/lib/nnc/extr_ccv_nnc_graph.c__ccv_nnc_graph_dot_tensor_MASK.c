#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_9__ {int* inc; } ;
typedef  TYPE_3__ ccv_nnc_tensor_view_t ;
struct TYPE_8__ {int* dim; int /*<<< orphan*/  type; } ;
struct TYPE_7__ {int /*<<< orphan*/  u8; } ;
struct TYPE_10__ {TYPE_2__ info; int /*<<< orphan*/  type; TYPE_1__ data; } ;
typedef  TYPE_4__ ccv_nnc_tensor_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int const FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_4__ const* const) ; 
 int const CCV_NNC_LONG_DOT_GRAPH ; 
 int CCV_NNC_MAX_DIM_ALLOC ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int const FUNC4 (int const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int const,...) ; 
 int /*<<< orphan*/  FUNC6 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(const int index, const ccv_nnc_tensor_t* const tensor, const int zone, const int flags, const int depth, FILE* out)
{
	// if it has an alias pointer, or, it is a long form.
	if (flags == CCV_NNC_LONG_DOT_GRAPH)
		FUNC6('{', out);
	const int is_tensor_view = FUNC2(tensor);
	if (is_tensor_view)
		FUNC5(out, "tensorview%d", index);
	else
		FUNC5(out, "tensor%d", index);
	int i;
	for (i = 0; i < depth; i++) // Print subscription to denote depth.
		FUNC6('\'', out);
	if (FUNC1(tensor->type))
		FUNC7(" (t)", out);
	if (flags == CCV_NNC_LONG_DOT_GRAPH)
	{
		const int device_id = FUNC3(tensor->info.type);
		FUNC5(out, "|d%d|zone%d", device_id, zone);
		for (i = 0; i < depth; i++) // Print subscription to denote depth.
			FUNC6('\'', out);
		uintptr_t aptr = (uintptr_t)tensor->data.u8;
		const int* ainc = is_tensor_view ? ((ccv_nnc_tensor_view_t*)(tensor))->inc : tensor->info.dim;
		// For the last one, we don't extend to full ainc.
		size_t ainc_size = (FUNC4(ainc) - ainc[0] + tensor->info.dim[0]) * FUNC0(tensor->type);
		// Print out the range as well.
		FUNC5(out, "|{%#010x|%#010x}|%d", (uint32_t)aptr, (uint32_t)(aptr + ainc_size - 1), tensor->info.dim[0]);
		for (i = 1; i < CCV_NNC_MAX_DIM_ALLOC && tensor->info.dim[i]; i++)
			FUNC5(out, "x%d", tensor->info.dim[i]);
		FUNC6('}', out);
	}
}