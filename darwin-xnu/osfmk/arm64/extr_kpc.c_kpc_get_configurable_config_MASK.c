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
typedef  unsigned long long uint64_t ;
typedef  unsigned long long uint32_t ;
typedef  int /*<<< orphan*/  kpc_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long long) ; 
 unsigned long long FUNC2 () ; 
 unsigned long long FUNC3 () ; 

int
FUNC4(kpc_config_t *configv, uint64_t pmc_mask)
{
	uint32_t cfg_count = FUNC2(), offset = FUNC3();

	FUNC0(configv);

	for (uint32_t i = 0; i < cfg_count; ++i)
		if ((1ULL << i) & pmc_mask)
			*configv++ = FUNC1(i + offset);
	return 0;
}