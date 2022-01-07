
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ t0; } ;
struct TYPE_4__ {TYPE_1__ int_raw; } ;
typedef scalar_t__ RESET_REASON ;


 scalar_t__ SW_CPU_RESET ;
 int TEST_ASSERT_EQUAL (scalar_t__,scalar_t__) ;
 TYPE_2__ TIMERG0 ;
 int printf (char*) ;
 scalar_t__ rtc_get_reset_reason (int ) ;
 int timer_group_test_init () ;

__attribute__((used)) static void timer_group_test_second_stage(void)
{
    RESET_REASON rst_res = rtc_get_reset_reason(0);
    if(rst_res != SW_CPU_RESET){
        printf("Not software reset\n");
    }
    TEST_ASSERT_EQUAL(SW_CPU_RESET, rst_res);
    timer_group_test_init();

    TEST_ASSERT_EQUAL(0, TIMERG0.int_raw.t0);
}
