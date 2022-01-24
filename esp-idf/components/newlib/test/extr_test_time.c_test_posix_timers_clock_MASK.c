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
typedef  long uint64_t ;
struct timeval {long tv_sec; long tv_usec; int /*<<< orphan*/  member_0; } ;
struct timespec {int tv_sec; long tv_nsec; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int CLOCK_MONOTONIC ; 
 int CLOCK_REALTIME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (long,long) ; 
 int /*<<< orphan*/  FUNC2 (long,long,long) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int FUNC4 (int,struct timespec*) ; 
 int FUNC5 (int,struct timespec*) ; 
 int FUNC6 (int,struct timespec*) ; 
 long FUNC7 () ; 
 long FUNC8 () ; 
 scalar_t__ FUNC9 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 long FUNC11 () ; 
 scalar_t__ FUNC12 (struct timeval*,int /*<<< orphan*/ *) ; 

void FUNC13 (void)
{
#ifndef _POSIX_TIMERS
    FUNC3(false, "_POSIX_TIMERS - is not defined");
#endif

#if defined( WITH_FRC )
    printf("WITH_FRC    ");
#endif

#if defined( WITH_RTC )
    printf("WITH_RTC    ");
#endif

#ifdef CONFIG_ESP32_RTC_CLK_SRC_EXT_CRYS
    printf("External (crystal) Frequency = %d Hz\n", rtc_clk_slow_freq_get_hz());
#else
    FUNC10("Internal Frequency = %d Hz\n", FUNC11());
#endif

    FUNC0(FUNC6(CLOCK_REALTIME, NULL) == -1);
    FUNC0(FUNC5(CLOCK_REALTIME, NULL) == -1);
    FUNC0(FUNC4(CLOCK_REALTIME,  NULL) == -1);

    FUNC0(FUNC6(CLOCK_MONOTONIC, NULL) == -1);
    FUNC0(FUNC5(CLOCK_MONOTONIC, NULL) == -1);
    FUNC0(FUNC4(CLOCK_MONOTONIC,  NULL) == -1);

#if defined( WITH_FRC ) || defined( WITH_RTC )
    struct timeval now = {0};
    now.tv_sec  = 10L;
    now.tv_usec = 100000L;
    TEST_ASSERT(settimeofday(&now, NULL) == 0);
    TEST_ASSERT(gettimeofday(&now, NULL) == 0);

    struct timespec ts = {0};

    TEST_ASSERT(clock_settime(0xFFFFFFFF, &ts) == -1);
    TEST_ASSERT(clock_gettime(0xFFFFFFFF, &ts) == -1);
    TEST_ASSERT(clock_getres(0xFFFFFFFF,  &ts) == 0);

    TEST_ASSERT(clock_gettime(CLOCK_REALTIME, &ts) == 0);
    TEST_ASSERT(now.tv_sec == ts.tv_sec);
    TEST_ASSERT_INT_WITHIN(5000000L, ts.tv_nsec, now.tv_usec * 1000L);

    ts.tv_sec  = 20;
    ts.tv_nsec = 100000000L;
    TEST_ASSERT(clock_settime(CLOCK_REALTIME, &ts) == 0);
    TEST_ASSERT(gettimeofday(&now, NULL) == 0);
    TEST_ASSERT(now.tv_sec == ts.tv_sec);
    TEST_ASSERT_INT_WITHIN(5000L, now.tv_usec,  ts.tv_nsec / 1000L);

    TEST_ASSERT(clock_settime(CLOCK_MONOTONIC, &ts) == -1);

    uint64_t delta_monotonic_us = 0;
#if defined( WITH_FRC )

    TEST_ASSERT(clock_getres(CLOCK_REALTIME, &ts) == 0);
    TEST_ASSERT_EQUAL_INT(1000, ts.tv_nsec);
    TEST_ASSERT(clock_getres(CLOCK_MONOTONIC, &ts) == 0);
    TEST_ASSERT_EQUAL_INT(1000, ts.tv_nsec);

    TEST_ASSERT(clock_gettime(CLOCK_MONOTONIC, &ts) == 0);
    delta_monotonic_us = esp_timer_get_time() - (ts.tv_sec * 1000000L + ts.tv_nsec / 1000L);
    TEST_ASSERT(delta_monotonic_us > 0 || delta_monotonic_us == 0);
    TEST_ASSERT_INT_WITHIN(5000L, 0, delta_monotonic_us);

    #elif defined( WITH_RTC )

    TEST_ASSERT(clock_getres(CLOCK_REALTIME, &ts) == 0);
    TEST_ASSERT_EQUAL_INT(1000000000L / rtc_clk_slow_freq_get_hz(), ts.tv_nsec);
    TEST_ASSERT(clock_getres(CLOCK_MONOTONIC, &ts) == 0);
    TEST_ASSERT_EQUAL_INT(1000000000L / rtc_clk_slow_freq_get_hz(), ts.tv_nsec);

    TEST_ASSERT(clock_gettime(CLOCK_MONOTONIC, &ts) == 0);
    delta_monotonic_us = esp_clk_rtc_time() - (ts.tv_sec * 1000000L + ts.tv_nsec / 1000L);
    TEST_ASSERT(delta_monotonic_us > 0 || delta_monotonic_us == 0);
    TEST_ASSERT_INT_WITHIN(5000L, 0, delta_monotonic_us);

#endif // WITH_FRC

#else
    struct timespec ts = {0};
    FUNC0(FUNC6(CLOCK_REALTIME, &ts) == -1);
    FUNC0(FUNC5(CLOCK_REALTIME, &ts) == -1);
    FUNC0(FUNC4(CLOCK_REALTIME,  &ts) == -1);

    FUNC0(FUNC6(CLOCK_MONOTONIC, &ts) == -1);
    FUNC0(FUNC5(CLOCK_MONOTONIC, &ts) == -1);
    FUNC0(FUNC4(CLOCK_MONOTONIC,  &ts) == -1);
#endif // defined( WITH_FRC ) || defined( WITH_RTC )
}