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
struct TYPE_5__ {int* dim; int /*<<< orphan*/  type; } ;
struct TYPE_6__ {char* name; int flags; int alias_ref; TYPE_1__ info; } ;
typedef  TYPE_2__ ccv_nnc_tensor_symbol_info_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ CCV_COMPUTE_DEVICE_ANY ; 
 int const CCV_NNC_LONG_DOT_GRAPH ; 
 int CCV_NNC_MAX_DIM_ALLOC ; 
 int CCV_NNC_TENSOR_SYMBOL_INIT_ONES ; 
 int CCV_NNC_TENSOR_SYMBOL_INIT_ZEROS ; 
 int CCV_NNC_TENSOR_SYMBOL_TAPE_VAR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ CCV_TENSOR_GPU_MEMORY ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int const) ; 
 int /*<<< orphan*/  FUNC4 (char,int /*<<< orphan*/ *) ; 
 int FUNC5 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(const int index, const ccv_nnc_tensor_symbol_info_t* const symbol_info, const ccv_nnc_tensor_symbol_info_t* const alias_info, const int html_like, const int flags, FILE* out)
{
	// if it has an alias pointer, or, it is a long form.
	if ((flags == CCV_NNC_LONG_DOT_GRAPH || alias_info) && !html_like)
		FUNC4('{', out);
	if (symbol_info->name)
		FUNC5(symbol_info->name, out);
	else
		FUNC3(out, "tensor%d", index);
	if (flags == CCV_NNC_LONG_DOT_GRAPH)
	{
		int flag = -1;
		if (symbol_info->flags & CCV_NNC_TENSOR_SYMBOL_INIT_ZEROS)
			flag = FUNC5(" (0", out); // Output if it is zero init'ed.
		else if (symbol_info->flags & CCV_NNC_TENSOR_SYMBOL_INIT_ONES)
				flag = FUNC5(" (1", out); // Output if it is one init'ed.
		if (symbol_info->flags & CCV_NNC_TENSOR_SYMBOL_TAPE_VAR)
			flag = (flag >= 0) ? FUNC5(",t", out) : FUNC5(" (t", out); // Output is a tape variable
		if (FUNC2(symbol_info->info.type) == CCV_TENSOR_GPU_MEMORY &&
			FUNC0(symbol_info->info.type) != CCV_COMPUTE_DEVICE_ANY)
			flag = (flag >= 0) ? FUNC3(out, ",d%d", FUNC1(symbol_info->info.type)) : FUNC3(out, " (d%d", FUNC1(symbol_info->info.type));
		if (flag >= 0)
			FUNC5(")", out);
	}
	if (flags == CCV_NNC_LONG_DOT_GRAPH)
	{
		int i;
		if (html_like)
			FUNC3(out, "</td><td>%d", symbol_info->info.dim[0]);
		else
			FUNC3(out, "|%d", symbol_info->info.dim[0]);
		for (i = 1; i < CCV_NNC_MAX_DIM_ALLOC && symbol_info->info.dim[i]; i++)
			FUNC3(out, "x%d", symbol_info->info.dim[i]);
	}
	if (alias_info)
	{
		if (html_like)
			FUNC5("</td><td border=\"0\">as. ", out);
		else
			FUNC5("|as. ", out);
		if (alias_info->name)
			FUNC5(alias_info->name, out);
		else
			FUNC3(out, "tensor%d", symbol_info->alias_ref - 1);
		if (flags == CCV_NNC_LONG_DOT_GRAPH)
		{
			int flag = -1;
			if (alias_info->flags & CCV_NNC_TENSOR_SYMBOL_INIT_ZEROS)
				flag = FUNC5(" (0", out); // Output if it is zero init'ed.
			else if (alias_info->flags & CCV_NNC_TENSOR_SYMBOL_INIT_ONES)
				flag = FUNC5(" (1", out); // Output if it is one init'ed.
			if (alias_info->flags & CCV_NNC_TENSOR_SYMBOL_TAPE_VAR)
				flag = (flag >= 0) ? FUNC5(",t", out) : FUNC5(" (t", out); // Output is a tape variable
			if (FUNC2(alias_info->info.type) == CCV_TENSOR_GPU_MEMORY &&
				FUNC0(alias_info->info.type) != CCV_COMPUTE_DEVICE_ANY)
				flag = (flag >= 0) ? FUNC3(out, ",d%d", FUNC1(alias_info->info.type)) : FUNC3(out, " (d%d", FUNC1(alias_info->info.type));
			if (flag >= 0)
				FUNC5(")", out);
		}
	}
	if ((flags == CCV_NNC_LONG_DOT_GRAPH || alias_info) && !html_like)
		FUNC4('}', out);
}