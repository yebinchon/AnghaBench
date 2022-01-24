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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

unsigned FUNC1(unsigned limit, unsigned blocksize, unsigned predictor_order)
{
	unsigned max_rice_partition_order = limit;

	while(max_rice_partition_order > 0 && (blocksize >> max_rice_partition_order) <= predictor_order)
		max_rice_partition_order--;

	FUNC0(
		(max_rice_partition_order == 0 && blocksize >= predictor_order) ||
		(max_rice_partition_order > 0 && blocksize >> max_rice_partition_order > predictor_order)
	);

	return max_rice_partition_order;
}