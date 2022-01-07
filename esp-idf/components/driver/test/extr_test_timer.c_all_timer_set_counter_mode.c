
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timer_count_dir_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_OK ;
 int TEST_ASSERT (int) ;
 int TIMER_0 ;
 int TIMER_1 ;
 int TIMER_GROUP_0 ;
 int TIMER_GROUP_1 ;
 scalar_t__ timer_set_counter_mode (int ,int ,int ) ;

__attribute__((used)) static void all_timer_set_counter_mode(timer_count_dir_t counter_dir)
{
    esp_err_t ret;
    ret = timer_set_counter_mode(TIMER_GROUP_0, TIMER_0, counter_dir);
    TEST_ASSERT(ret == ESP_OK);
    ret = timer_set_counter_mode(TIMER_GROUP_0, TIMER_1, counter_dir);
    TEST_ASSERT(ret == ESP_OK);
    ret = timer_set_counter_mode(TIMER_GROUP_1, TIMER_0, counter_dir);
    TEST_ASSERT(ret == ESP_OK);
    ret = timer_set_counter_mode(TIMER_GROUP_1, TIMER_1, counter_dir);
    TEST_ASSERT(ret == ESP_OK);
}
