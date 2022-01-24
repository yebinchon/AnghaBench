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
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ s_microseconds_offset ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

void FUNC5(void)
{
#if defined( WITH_FRC ) && defined( WITH_RTC )
    adjtime_corr_stop();
    int64_t s_microseconds_offset_cur = get_rtc_time_us() - esp_timer_get_time();
    set_boot_time(get_adjusted_boot_time() + ((int64_t)s_microseconds_offset - s_microseconds_offset_cur));
#endif
}