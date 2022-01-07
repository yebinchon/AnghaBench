
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_OK ;
 int TEST_ASSERT (int) ;
 int TIMER_0 ;
 int TIMER_1 ;
 int TIMER_GROUP_0 ;
 int TIMER_GROUP_1 ;
 scalar_t__ timer_get_counter_value (int ,int ,scalar_t__*) ;

__attribute__((used)) static void all_timer_get_counter_value(uint64_t set_timer_val, bool flag,
                                        uint64_t *counter_val)
{
    esp_err_t ret;
    uint64_t time_val;
    ret = timer_get_counter_value(TIMER_GROUP_0, TIMER_0, &time_val);
    TEST_ASSERT(ret == ESP_OK);
    if (flag == 1) {
        TEST_ASSERT(set_timer_val == time_val);
    } else {
        TEST_ASSERT(set_timer_val != time_val);
        if (counter_val != ((void*)0)) {
            counter_val[0] = time_val;
        }
    }
    ret = timer_get_counter_value(TIMER_GROUP_0, TIMER_1, &time_val);
    TEST_ASSERT(ret == ESP_OK);
    if (flag) {
        TEST_ASSERT(set_timer_val == time_val);
    } else {
        TEST_ASSERT(set_timer_val != time_val);
        if (counter_val != ((void*)0)) {
            counter_val[1] = time_val;
        }
    }
    ret = timer_get_counter_value(TIMER_GROUP_1, TIMER_0, &time_val);
    TEST_ASSERT(ret == ESP_OK);
    if (flag) {
        TEST_ASSERT(set_timer_val == time_val);
    } else {
        TEST_ASSERT(set_timer_val != time_val);
        if (counter_val != ((void*)0)) {
            counter_val[2] = time_val;
        }
    }
    ret = timer_get_counter_value(TIMER_GROUP_1, TIMER_1, &time_val);
    TEST_ASSERT(ret == ESP_OK);
    if (flag) {
        TEST_ASSERT(set_timer_val == time_val);
    } else {
        TEST_ASSERT(set_timer_val != time_val);
        if (counter_val != ((void*)0)) {
            counter_val[3] = time_val;
        }
    }
}
