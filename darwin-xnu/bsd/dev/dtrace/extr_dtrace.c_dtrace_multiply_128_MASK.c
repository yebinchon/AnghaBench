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
typedef  int uint64_t ;

/* Variables and functions */
 int DT_MASK_LO ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 

__attribute__((used)) static void
FUNC2(uint64_t factor1, uint64_t factor2, uint64_t *product)
{
	uint64_t hi1, hi2, lo1, lo2;
	uint64_t tmp[2];

	hi1 = factor1 >> 32;
	hi2 = factor2 >> 32;

	lo1 = factor1 & DT_MASK_LO;
	lo2 = factor2 & DT_MASK_LO;

	product[0] = lo1 * lo2;
	product[1] = hi1 * hi2;

	tmp[0] = hi1 * lo2;
	tmp[1] = 0;
	FUNC1(tmp, 32);
	FUNC0(product, tmp, product);

	tmp[0] = hi2 * lo1;
	tmp[1] = 0;
	FUNC1(tmp, 32);
	FUNC0(product, tmp, product);
}