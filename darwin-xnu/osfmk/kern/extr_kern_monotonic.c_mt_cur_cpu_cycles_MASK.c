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
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 size_t MT_CORE_CYCLES ; 
 int MT_CORE_NFIXED ; 
 int /*<<< orphan*/  mt_core_supported ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

uint64_t
FUNC1(void)
{
	uint64_t counts[MT_CORE_NFIXED];

	if (!mt_core_supported) {
		return 0;
	}

	FUNC0(counts);
	return counts[MT_CORE_CYCLES];
}