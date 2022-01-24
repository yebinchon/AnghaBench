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
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  esp_event_loop_handle_t ;
typedef  int /*<<< orphan*/  esp_event_base_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TEST_EVENT_BASE1_EV2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_test_base1 ; 
 int /*<<< orphan*/  test_event_simple_handler_1 ; 
 int /*<<< orphan*/  test_event_simple_handler_2 ; 
 int /*<<< orphan*/  test_event_simple_handler_3 ; 

__attribute__((used)) static void FUNC2(void* handler_arg, esp_event_base_t base, int32_t id, void* event_arg)
{
    esp_event_loop_handle_t* loop = (esp_event_loop_handle_t*) event_arg;
    FUNC0(ESP_OK, FUNC1(*loop, s_test_base1, TEST_EVENT_BASE1_EV2, test_event_simple_handler_1));
    FUNC0(ESP_OK, FUNC1(*loop, s_test_base1, TEST_EVENT_BASE1_EV2, test_event_simple_handler_2));
    FUNC0(ESP_OK, FUNC1(*loop, s_test_base1, TEST_EVENT_BASE1_EV2, test_event_simple_handler_3));
}