#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ tensor_view; scalar_t__ destinations; scalar_t__ sources; int /*<<< orphan*/  index; } ;
typedef  TYPE_1__ ccv_nnc_tensor_variable_graph_bind_t ;
typedef  int /*<<< orphan*/  ccv_nnc_tensor_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  CCV_NNC_TENSOR_NO_VARIABLE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(ccv_nnc_tensor_variable_graph_bind_t* const bind, const int zeroing)
{
	bind->index = CCV_NNC_TENSOR_NO_VARIABLE;
	if (bind->sources)
		FUNC2(bind->sources);
	if (bind->destinations)
		FUNC2(bind->destinations);
	if (bind->tensor_view && !FUNC1(bind->tensor_view))
	{
		if (FUNC0(bind->tensor_view))
			FUNC4(bind->tensor_view);
		else
			FUNC3((ccv_nnc_tensor_t*)bind->tensor_view);
	}
	if (zeroing)
	{
		bind->sources = 0;
		bind->destinations = 0;
		bind->tensor_view = 0;
	}
}