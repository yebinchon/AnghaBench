
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int tv_sec; int tv_usec; } ;
struct TYPE_2__ {int tv_sec; int tv_usec; } ;
typedef scalar_t__ RESET_REASON ;


 scalar_t__ DEEPSLEEP_RESET ;
 int TEST_ASSERT (int) ;
 int TEST_ASSERT_MESSAGE (int,char*) ;
 int gettimeofday (struct timeval*,int *) ;
 int printf (char*,int) ;
 scalar_t__ rtc_get_reset_reason (int ) ;
 TYPE_1__ start ;

__attribute__((used)) static void check_time_deepsleep(void)
{
    struct timeval stop;
    RESET_REASON reason = rtc_get_reset_reason(0);
    TEST_ASSERT(reason == DEEPSLEEP_RESET);
    gettimeofday(&stop, ((void*)0));

    int dt_ms = (stop.tv_sec - start.tv_sec) * 1000 + (stop.tv_usec - start.tv_usec) / 1000;
    printf("delta time = %d \n", dt_ms);
    TEST_ASSERT_MESSAGE(dt_ms > 0, "Time in deep sleep is negative");
}
