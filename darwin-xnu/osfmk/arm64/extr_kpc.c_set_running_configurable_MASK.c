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
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long long) ; 
 unsigned long long FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned long long) ; 
 unsigned long long FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(uint64_t target_mask, uint64_t state_mask)
{
	uint32_t cfg_count = FUNC3(), offset = FUNC5();
	boolean_t enabled;

	enabled = FUNC6(FALSE);

	for (uint32_t i = 0; i < cfg_count; ++i) {
		if (((1ULL << i) & target_mask) == 0)
			continue;
		FUNC0(FUNC4(offset + i));

		if ((1ULL << i) & state_mask) {
			FUNC2(offset + i);
		} else {
			FUNC1(offset + i);
		}
	}

	FUNC6(enabled);
}