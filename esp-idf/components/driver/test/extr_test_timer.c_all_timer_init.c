
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timer_config_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_INVALID_ARG ;
 scalar_t__ ESP_OK ;
 int TEST_ASSERT (int) ;
 int TIMER_0 ;
 int TIMER_1 ;
 int TIMER_GROUP_0 ;
 int TIMER_GROUP_1 ;
 scalar_t__ timer_init (int ,int ,int *) ;

__attribute__((used)) static void all_timer_init(timer_config_t config, bool flag)
{
    esp_err_t ret;
    ret = timer_init(TIMER_GROUP_0, TIMER_0, &config);
    if (flag) {
        TEST_ASSERT(ret == ESP_OK);
    } else {
        TEST_ASSERT(ret == ESP_ERR_INVALID_ARG);
    }
    ret = timer_init(TIMER_GROUP_0, TIMER_1, &config);
    if (flag) {
        TEST_ASSERT(ret == ESP_OK);
    } else {
        TEST_ASSERT(ret == ESP_ERR_INVALID_ARG);
    }
    ret = timer_init(TIMER_GROUP_1, TIMER_0, &config);
    if (flag) {
        TEST_ASSERT(ret == ESP_OK);
    } else {
        TEST_ASSERT(ret == ESP_ERR_INVALID_ARG);
    }
    ret = timer_init(TIMER_GROUP_1, TIMER_1, &config);
    if (flag) {
        TEST_ASSERT(ret == ESP_OK);
    } else {
        TEST_ASSERT(ret == ESP_ERR_INVALID_ARG);
    }
}
