#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int const unfoldable_except_ref; scalar_t__ type; scalar_t__* p_refs; int pin_mem; int ref; TYPE_2__* tail; TYPE_2__* head; scalar_t__ size; scalar_t__ r_refs; } ;
typedef  TYPE_1__ ccv_nnc_tensor_block_t ;
struct TYPE_13__ {int rnum; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 scalar_t__ FUNC2 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__) ; 
 int FUNC4 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int const) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(ccv_nnc_tensor_block_t* const tensor_blocks, const int p_ref_0, const int p_ref_1)
{
	// Now we are sure p_ref_0 points to the input, p_ref_1 points to the output.
	if (!FUNC2(tensor_blocks[p_ref_0]) &&
		(!FUNC3(tensor_blocks[p_ref_1]) || tensor_blocks[p_ref_1].unfoldable_except_ref == p_ref_0 + 1) &&
		tensor_blocks[p_ref_0].tail->rnum == 1 &&
		tensor_blocks[p_ref_1].head->rnum == 1 &&
		tensor_blocks[p_ref_0].type == tensor_blocks[p_ref_1].type && // Must be the same type.
		*(int*)FUNC10(tensor_blocks[p_ref_0].tail, 0) == *(int*)FUNC10(tensor_blocks[p_ref_1].head, 0))
	{
		// If the two parent refs matches (thus, they meet at the same node), we can concatenate with each other and mark one as a ref. This is very similar to in-place operation combining.
		FUNC7(FUNC0(tensor_blocks[p_ref_0]));
		FUNC7(FUNC0(tensor_blocks[p_ref_1]));
		FUNC9(tensor_blocks[p_ref_0].tail);
		tensor_blocks[p_ref_0].tail = tensor_blocks[p_ref_1].tail;
		if (tensor_blocks[p_ref_1].p_refs[0])
		{
			FUNC7(tensor_blocks[p_ref_1].p_refs[1] == 0); // It simply cannot have more than one p_refs, otherwise we cannot merge.
			if (!tensor_blocks[p_ref_0].p_refs[0])
				tensor_blocks[p_ref_0].p_refs[0] = tensor_blocks[p_ref_1].p_refs[0];
			else
				tensor_blocks[p_ref_0].p_refs[1] = tensor_blocks[p_ref_1].p_refs[0];
		}
		tensor_blocks[p_ref_0].pin_mem = tensor_blocks[p_ref_0].pin_mem || tensor_blocks[p_ref_1].pin_mem;
		FUNC5(tensor_blocks[p_ref_0], FUNC4(tensor_blocks[p_ref_0]) | FUNC4(tensor_blocks[p_ref_1]));
		FUNC9(tensor_blocks[p_ref_1].head);
		if (FUNC2(tensor_blocks[p_ref_1]))
			FUNC6(tensor_blocks[p_ref_0]);
		// Don't need to check UNFOLDABLE_AS_OUTPUT for p_ref_1 because if it is so, we cannot fold right now.
		FUNC1(tensor_blocks[p_ref_1]);
		tensor_blocks[p_ref_1].ref = p_ref_0 + 1;
		if (!tensor_blocks[p_ref_0].r_refs)
			tensor_blocks[p_ref_0].r_refs = FUNC11(sizeof(int), 0, 0);
		FUNC8(tensor_blocks[p_ref_0].r_refs, p_ref_1 + 1);
		tensor_blocks[p_ref_1].size = 0;
		tensor_blocks[p_ref_1].head = 0;
		tensor_blocks[p_ref_1].tail = 0;
		return 1;
	}
	return 0;
}