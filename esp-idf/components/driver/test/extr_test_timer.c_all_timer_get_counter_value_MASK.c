#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  TIMER_0 ; 
 int /*<<< orphan*/  TIMER_1 ; 
 int /*<<< orphan*/  TIMER_GROUP_0 ; 
 int /*<<< orphan*/  TIMER_GROUP_1 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void FUNC2(uint64_t set_timer_val, bool flag,
                                        uint64_t *counter_val)
{
    esp_err_t ret;
    uint64_t time_val;
    ret = FUNC1(TIMER_GROUP_0, TIMER_0, &time_val);
    FUNC0(ret == ESP_OK);
    if (flag == true) {
        FUNC0(set_timer_val == time_val);
    } else {
        FUNC0(set_timer_val != time_val);
        if (counter_val != NULL) {
            counter_val[0] = time_val;
        }
    }
    ret = FUNC1(TIMER_GROUP_0, TIMER_1, &time_val);
    FUNC0(ret == ESP_OK);
    if (flag) {
        FUNC0(set_timer_val == time_val);
    } else {
        FUNC0(set_timer_val != time_val);
        if (counter_val != NULL) {
            counter_val[1] = time_val;
        }
    }
    ret = FUNC1(TIMER_GROUP_1, TIMER_0, &time_val);
    FUNC0(ret == ESP_OK);
    if (flag) {
        FUNC0(set_timer_val == time_val);
    } else {
        FUNC0(set_timer_val != time_val);
        if (counter_val != NULL) {
            counter_val[2] = time_val;
        }
    }
    ret = FUNC1(TIMER_GROUP_1, TIMER_1, &time_val);
    FUNC0(ret == ESP_OK);
    if (flag) {
        FUNC0(set_timer_val == time_val);
    } else {
        FUNC0(set_timer_val != time_val);
        if (counter_val != NULL) {
            counter_val[3] = time_val;
        }
    }
}