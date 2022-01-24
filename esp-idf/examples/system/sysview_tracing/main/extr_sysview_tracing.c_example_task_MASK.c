#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  timer_isr_handle_t ;
struct TYPE_3__ {int /*<<< orphan*/  timer; int /*<<< orphan*/  group; } ;
typedef  TYPE_1__ example_event_data_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  example_timer_isr ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void *p)
{
    example_event_data_t *arg = (example_event_data_t *) p;
    timer_isr_handle_t inth;

    FUNC1(TAG, "%p: run task", FUNC6());

    esp_err_t res = FUNC4(arg->group, arg->timer, example_timer_isr, arg, 0, &inth);
    if (res != ESP_OK) {
        FUNC0(TAG, "%p: failed to register timer ISR", FUNC6());
    } else {
        res = FUNC5(arg->group, arg->timer);
        if (res != ESP_OK) {
            FUNC0(TAG, "%p: failed to start timer", FUNC6());
        }
    }

    while (1) {
        uint32_t event_val;
        FUNC3();
        FUNC7(0, 0, &event_val, portMAX_DELAY);
        FUNC2(event_val);
        FUNC1(TAG, "Task[%p]: received event %d", FUNC6(), event_val);
    }
}