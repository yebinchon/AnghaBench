
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_OK ;
 int TEST_ASSERT (int) ;
 int TIMER_0 ;
 int TIMER_1 ;
 int TIMER_GROUP_0 ;
 int TIMER_GROUP_1 ;
 double TIMER_SCALE ;
 scalar_t__ timer_set_alarm_value (int ,int ,double) ;

__attribute__((used)) static void all_timer_set_alarm_value(double alarm_time)
{
    esp_err_t ret;
    ret = timer_set_alarm_value(TIMER_GROUP_0, TIMER_0,
                                alarm_time * TIMER_SCALE);
    TEST_ASSERT(ret == ESP_OK);
    ret = timer_set_alarm_value(TIMER_GROUP_0, TIMER_1,
                                alarm_time * TIMER_SCALE);
    TEST_ASSERT(ret == ESP_OK);
    ret = timer_set_alarm_value(TIMER_GROUP_1, TIMER_0,
                                alarm_time * TIMER_SCALE);
    TEST_ASSERT(ret == ESP_OK);
    ret = timer_set_alarm_value(TIMER_GROUP_1, TIMER_1,
                                alarm_time * TIMER_SCALE);
    TEST_ASSERT(ret == ESP_OK);
}
