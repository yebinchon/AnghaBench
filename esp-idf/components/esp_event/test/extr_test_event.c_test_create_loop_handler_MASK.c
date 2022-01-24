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
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  esp_event_loop_handle_t ;
typedef  int /*<<< orphan*/  esp_event_loop_args_t ;
typedef  int /*<<< orphan*/  esp_event_base_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TEST_EVENT_BASE1_EV1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(void* handler_args, esp_event_base_t base, int32_t id, void* event_data)
{
    esp_event_loop_args_t loop_args = FUNC3();

    if (id == TEST_EVENT_BASE1_EV1) {
        FUNC0(ESP_OK, FUNC1(&loop_args, (esp_event_loop_handle_t*) handler_args));
    } else {
        FUNC0(ESP_OK, FUNC2(*((esp_event_loop_handle_t*) handler_args)));
    }
}