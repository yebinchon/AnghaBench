
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long uint64_t ;
struct timeval {long tv_sec; long tv_usec; int member_0; } ;
struct timespec {int tv_sec; long tv_nsec; int member_0; } ;


 int CLOCK_MONOTONIC ;
 int CLOCK_REALTIME ;
 int TEST_ASSERT (int) ;
 int TEST_ASSERT_EQUAL_INT (long,long) ;
 int TEST_ASSERT_INT_WITHIN (long,long,long) ;
 int TEST_ASSERT_MESSAGE (int,char*) ;
 int clock_getres (int,struct timespec*) ;
 int clock_gettime (int,struct timespec*) ;
 int clock_settime (int,struct timespec*) ;
 long esp_clk_rtc_time () ;
 long esp_timer_get_time () ;
 scalar_t__ gettimeofday (struct timeval*,int *) ;
 int printf (char*,...) ;
 long rtc_clk_slow_freq_get_hz () ;
 scalar_t__ settimeofday (struct timeval*,int *) ;

void test_posix_timers_clock (void)
{

    TEST_ASSERT_MESSAGE(0, "_POSIX_TIMERS - is not defined");
    printf("Internal Frequency = %d Hz\n", rtc_clk_slow_freq_get_hz());


    TEST_ASSERT(clock_settime(CLOCK_REALTIME, ((void*)0)) == -1);
    TEST_ASSERT(clock_gettime(CLOCK_REALTIME, ((void*)0)) == -1);
    TEST_ASSERT(clock_getres(CLOCK_REALTIME, ((void*)0)) == -1);

    TEST_ASSERT(clock_settime(CLOCK_MONOTONIC, ((void*)0)) == -1);
    TEST_ASSERT(clock_gettime(CLOCK_MONOTONIC, ((void*)0)) == -1);
    TEST_ASSERT(clock_getres(CLOCK_MONOTONIC, ((void*)0)) == -1);
    struct timespec ts = {0};
    TEST_ASSERT(clock_settime(CLOCK_REALTIME, &ts) == -1);
    TEST_ASSERT(clock_gettime(CLOCK_REALTIME, &ts) == -1);
    TEST_ASSERT(clock_getres(CLOCK_REALTIME, &ts) == -1);

    TEST_ASSERT(clock_settime(CLOCK_MONOTONIC, &ts) == -1);
    TEST_ASSERT(clock_gettime(CLOCK_MONOTONIC, &ts) == -1);
    TEST_ASSERT(clock_getres(CLOCK_MONOTONIC, &ts) == -1);

}
