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
typedef  int mpc_uint_t ;
typedef  int mpc_uint32_t ;
typedef  int /*<<< orphan*/  mpc_bits_reader ;

/* Variables and functions */
 int* log2_lost ; 
 int* log2_tab ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 

mpc_uint32_t FUNC1(mpc_bits_reader * r, mpc_uint_t max)
{
	mpc_uint32_t value = 0;
	if (max == 0)
		return 0;
	if (log2_tab[max - 1] > 1)
		value = FUNC0(r, log2_tab[max - 1] - 1);
	if (value >= log2_lost[max - 1])
		value = ((value << 1) | FUNC0(r, 1)) - log2_lost[max - 1];
	return value;
}