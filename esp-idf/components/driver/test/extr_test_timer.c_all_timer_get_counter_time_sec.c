
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_OK ;
 int TEST_ASSERT (int) ;
 int TEST_ASSERT_FLOAT_WITHIN (int ,int,double) ;
 int TIMER_0 ;
 int TIMER_1 ;
 int TIMER_DELTA ;
 int TIMER_GROUP_0 ;
 int TIMER_GROUP_1 ;
 scalar_t__ timer_get_counter_time_sec (int ,int ,double*) ;

__attribute__((used)) static void all_timer_get_counter_time_sec(bool flag, int delay_time)
{
    double time;
    esp_err_t ret;
    ret = timer_get_counter_time_sec(TIMER_GROUP_0, TIMER_0, &time);
    TEST_ASSERT(ret == ESP_OK);
    if (!flag) {
        TEST_ASSERT_FLOAT_WITHIN(TIMER_DELTA, delay_time, time);
    }
    ret = timer_get_counter_time_sec(TIMER_GROUP_0, TIMER_1, &time);
    TEST_ASSERT(ret == ESP_OK);
    if (!flag) {
        TEST_ASSERT_FLOAT_WITHIN(TIMER_DELTA, delay_time, time);
    }
    ret = timer_get_counter_time_sec(TIMER_GROUP_1, TIMER_0, &time);
    TEST_ASSERT(ret == ESP_OK);
    if (!flag) {
        TEST_ASSERT_FLOAT_WITHIN(TIMER_DELTA, delay_time, time);
    }
    ret = timer_get_counter_time_sec(TIMER_GROUP_1, TIMER_1, &time);
    TEST_ASSERT(ret == ESP_OK);
    if (!flag) {
        TEST_ASSERT_FLOAT_WITHIN(TIMER_DELTA, delay_time, time);
    }
}
