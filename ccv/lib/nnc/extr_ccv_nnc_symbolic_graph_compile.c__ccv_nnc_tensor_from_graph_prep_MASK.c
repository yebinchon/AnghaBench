#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ccv_nnc_tensor_t ;
struct TYPE_5__ {TYPE_1__* tensor_arena; int /*<<< orphan*/  while_count_tensor; struct TYPE_5__* p; } ;
typedef  TYPE_2__ ccv_nnc_symbolic_graph_prep_t ;
struct TYPE_4__ {int /*<<< orphan*/  tensor_metadata; int /*<<< orphan*/ ** vt_tensors; } ;

/* Variables and functions */
 int FUNC0 (int const) ; 
 int /*<<< orphan*/  FUNC1 (int const) ; 
 int const CCV_NNC_NO_TENSOR_SYMBOL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ccv_nnc_tensor_t* FUNC4(const ccv_nnc_symbolic_graph_prep_t* const graph_prep, const int symbol)
{
	if (symbol >= 0)
		return graph_prep->tensor_arena->vt_tensors[symbol];
	if (symbol == CCV_NNC_NO_TENSOR_SYMBOL)
		return 0;
	FUNC3(FUNC1(symbol));
	const ccv_nnc_symbolic_graph_prep_t* prep = graph_prep;
	int i;
	const int d = FUNC0(symbol);
	for (i = 0; i < d; i++)
		prep = prep->p;
	FUNC3(prep->while_count_tensor);
	return (ccv_nnc_tensor_t*)FUNC2(prep->tensor_arena->tensor_metadata, (0 << 1) + 1);
}