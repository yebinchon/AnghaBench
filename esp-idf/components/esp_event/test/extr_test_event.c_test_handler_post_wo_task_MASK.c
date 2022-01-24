#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ mutex; scalar_t__ data; } ;
typedef  TYPE_1__ simple_arg_t ;
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  esp_event_loop_handle_t ;
typedef  scalar_t__ esp_event_base_t ;
typedef  int /*<<< orphan*/  SemaphoreHandle_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_TIMEOUT ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TEST_EVENT_BASE1_EV1 ; 
 int /*<<< orphan*/  TEST_EVENT_BASE1_EV2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 scalar_t__ s_test_base1 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void* event_handler_arg, esp_event_base_t event_base, int32_t event_id, void* event_data)
{
    simple_arg_t* arg = (simple_arg_t*) event_handler_arg;

    esp_event_loop_handle_t* loop = (esp_event_loop_handle_t*) event_data;
    int* count = (int*) arg->data;

    (*count)++;

    if (*count <= 2) {
        if (event_base == s_test_base1 && event_id == TEST_EVENT_BASE1_EV1) {
            FUNC0(ESP_OK, FUNC1(*loop, s_test_base1, TEST_EVENT_BASE1_EV2, NULL, 0, portMAX_DELAY));
        } else{
            FUNC2((SemaphoreHandle_t) arg->mutex);
        }
    } else {
        // Test that once the queue is full and the handler attempts to post to the same loop,
        // posting does not block indefinitely.
        if (event_base == s_test_base1 && event_id == TEST_EVENT_BASE1_EV1) {
            FUNC3((SemaphoreHandle_t) arg->mutex, portMAX_DELAY);
            FUNC0(ESP_OK, FUNC1(*loop, s_test_base1, TEST_EVENT_BASE1_EV2, NULL, 0, portMAX_DELAY));
            FUNC0(ESP_ERR_TIMEOUT, FUNC1(*loop, s_test_base1, TEST_EVENT_BASE1_EV2, NULL, 0, portMAX_DELAY));
        }
    }
}