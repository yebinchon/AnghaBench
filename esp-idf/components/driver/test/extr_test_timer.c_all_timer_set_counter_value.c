
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_OK ;
 int TEST_ASSERT (int) ;
 int TIMER_0 ;
 int TIMER_1 ;
 int TIMER_GROUP_0 ;
 int TIMER_GROUP_1 ;
 scalar_t__ timer_set_counter_value (int ,int ,int ) ;

__attribute__((used)) static void all_timer_set_counter_value(uint64_t set_timer_val)
{
    esp_err_t ret;
    ret = timer_set_counter_value(TIMER_GROUP_0, TIMER_0, set_timer_val);
    TEST_ASSERT(ret == ESP_OK);
    ret = timer_set_counter_value(TIMER_GROUP_0, TIMER_1, set_timer_val);
    TEST_ASSERT(ret == ESP_OK);
    ret = timer_set_counter_value(TIMER_GROUP_1, TIMER_0, set_timer_val);
    TEST_ASSERT(ret == ESP_OK);
    ret = timer_set_counter_value(TIMER_GROUP_1, TIMER_1, set_timer_val);
    TEST_ASSERT(ret == ESP_OK);
}
