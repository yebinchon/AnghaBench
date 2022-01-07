
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
 scalar_t__ timer_pause (int ,int ) ;

__attribute__((used)) static void all_timer_pause(void)
{
    esp_err_t ret;
    ret = timer_pause(TIMER_GROUP_0, TIMER_0);
    TEST_ASSERT(ret == ESP_OK);
    ret = timer_pause(TIMER_GROUP_0, TIMER_1);
    TEST_ASSERT(ret == ESP_OK);
    ret = timer_pause(TIMER_GROUP_1, TIMER_0);
    TEST_ASSERT(ret == ESP_OK);
    ret = timer_pause(TIMER_GROUP_1, TIMER_1);
    TEST_ASSERT(ret == ESP_OK);
}
