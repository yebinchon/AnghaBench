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
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long long FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (unsigned long long) ; 
 unsigned long long FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(kpc_config_t *configv, uint64_t pmc_mask)
{
	uint32_t cfg_count = FUNC1(), offset = FUNC3();
	boolean_t enabled;

	FUNC0(configv);

	enabled = FUNC4(FALSE);

	for (uint32_t i = 0; i < cfg_count; ++i) {
		if (((1ULL << i) & pmc_mask) == 0)
			continue;
		FUNC0(FUNC2(i + offset));

		FUNC5(i + offset, *configv++);
	}

	FUNC4(enabled);

	return 0;
}