#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ccv_nnc_tensor_t ;
struct TYPE_4__ {int kind; int repeat; } ;
typedef  TYPE_1__ ccv_nnc_tensor_multiview_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static ccv_nnc_tensor_t* FUNC2(ccv_nnc_tensor_multiview_t* const mv)
{
	ccv_nnc_tensor_t* tensor = (ccv_nnc_tensor_t*)mv;
	while (FUNC0(tensor))
	{
		ccv_nnc_tensor_multiview_t* mv = (ccv_nnc_tensor_multiview_t*)tensor;
		const int count = 0;
		const int off = mv->kind;
		const int mod = mv->repeat;
		// If reached the root.
		tensor = FUNC1(mv)[count >= off ? ((count - off) % mod) + off : count]; // Unwrap.
	}
	return tensor;
}