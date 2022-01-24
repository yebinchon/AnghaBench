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
struct TYPE_3__ {int size; void** key; } ;
typedef  TYPE_1__ mpc_block ;
typedef  int /*<<< orphan*/  mpc_bits_reader ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 

int FUNC2(mpc_bits_reader * r, mpc_block * p_block)
{
	int size = 2;

	p_block->size = 0;
	p_block->key[0] = FUNC1(r, 8);
	p_block->key[1] = FUNC1(r, 8);

	size += FUNC0(r, &(p_block->size));

	if (p_block->size >= size) // check if the block size doesn't conflict with the header size
		p_block->size -= size;

	return size;
}