#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int mpc_uint64_t ;
typedef  int /*<<< orphan*/  mpc_bits_reader ;

/* Variables and functions */
 unsigned char FUNC0 (int /*<<< orphan*/ *,int) ; 

unsigned int FUNC1(mpc_bits_reader * r, mpc_uint64_t * p_size)
{
	unsigned char tmp;
	mpc_uint64_t size = 0;
	unsigned int ret = 0;

	do {
		tmp = FUNC0(r, 8);
		size = (size << 7) | (tmp & 0x7F);
		ret++;
	} while((tmp & 0x80));

	*p_size = size;
	return ret;
}