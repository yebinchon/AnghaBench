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
struct TYPE_5__ {TYPE_2__* head; } ;
typedef  TYPE_1__ ccv_nnc_tensor_block_t ;
struct TYPE_6__ {int rnum; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(const ccv_nnc_tensor_block_t* const tensor_block, const int head_node)
{
	FUNC0(tensor_block->head);
	return (tensor_block->head->rnum == 1 && *(int*)FUNC1(tensor_block->head, 0) == head_node);
}