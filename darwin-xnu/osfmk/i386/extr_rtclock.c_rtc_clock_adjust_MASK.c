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
typedef  int /*<<< orphan*/  pal_rtc_nanotime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  pal_rtc_nanotime_info ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(uint64_t tsc_base_delta)
{
    pal_rtc_nanotime_t	*rntp = &pal_rtc_nanotime_info;

    FUNC1(!FUNC2());
    FUNC1(tsc_base_delta < 100ULL);	/* i.e. it's small */
    FUNC0(tsc_base_delta, rntp);
    FUNC3(rntp);
}