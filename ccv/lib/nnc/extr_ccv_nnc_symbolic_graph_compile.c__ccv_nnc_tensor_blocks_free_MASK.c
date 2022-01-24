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
struct TYPE_4__ {scalar_t__ dup_p_refs; scalar_t__ r_refs; scalar_t__ tail; scalar_t__ head; } ;
typedef  TYPE_1__ ccv_nnc_tensor_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__* const) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void FUNC2(ccv_nnc_tensor_block_t* const tensor_blocks, const int tensor_block_size)
{
	int i;
	for (i = 0; i < tensor_block_size; i++)
	{
		if (tensor_blocks[i].head)
			FUNC1(tensor_blocks[i].head);
		if (tensor_blocks[i].tail)
			FUNC1(tensor_blocks[i].tail);
		if (tensor_blocks[i].r_refs)
			FUNC1(tensor_blocks[i].r_refs);
		if (tensor_blocks[i].dup_p_refs)
			FUNC1(tensor_blocks[i].dup_p_refs);
	}
	FUNC0(tensor_blocks);
}