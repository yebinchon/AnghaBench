
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ RESET_REASON ;


 scalar_t__ POWERON_RESET ;
 int TEST_ASSERT (int) ;
 int TEST_ASSERT_EQUAL (scalar_t__,scalar_t__) ;
 int TIMER_0 ;
 int TIMER_GROUP_0 ;
 int TIMER_INTR_T0 ;
 int esp_restart () ;
 int printf (char*) ;
 scalar_t__ rtc_get_reset_reason (int ) ;
 int timer_group_intr_get_in_isr (int ) ;
 int timer_group_test_init () ;
 int timer_start (int ,int ) ;
 int vTaskDelay (int) ;

__attribute__((used)) static void timer_group_test_first_stage(void)
{
    RESET_REASON rst_res = rtc_get_reset_reason(0);
    if(rst_res != POWERON_RESET){
        printf("Not power on reset\n");
    }
    TEST_ASSERT_EQUAL(POWERON_RESET, rst_res);
    static uint8_t loop_cnt = 0;
    timer_group_test_init();

    timer_start(TIMER_GROUP_0, TIMER_0);

    while( !(timer_group_intr_get_in_isr(TIMER_GROUP_0) & TIMER_INTR_T0) &&
            loop_cnt++ < 100) {
        vTaskDelay(200);
    }

    TEST_ASSERT(timer_group_intr_get_in_isr(TIMER_GROUP_0) & TIMER_INTR_T0);
    esp_restart();
}
