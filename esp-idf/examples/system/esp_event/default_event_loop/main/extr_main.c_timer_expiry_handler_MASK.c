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
typedef  int /*<<< orphan*/  esp_event_base_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  TIMER ; 
 int /*<<< orphan*/  TIMER_EVENTS ; 
 int /*<<< orphan*/  TIMER_EVENT_STOPPED ; 
 int TIMER_EXPIRIES_COUNT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  portMAX_DELAY ; 

__attribute__((used)) static void FUNC5(void* handler_args, esp_event_base_t base, int32_t id, void* event_data)
{
    static int count = 0;

    count++;

    if (count >= TIMER_EXPIRIES_COUNT) {
        // Stop the timer
        FUNC0(FUNC3(TIMER));

        FUNC1(TAG, "%s:%s: posting to default loop", base, FUNC4(base, TIMER_EVENT_STOPPED));

        // Post the event that the timer has been stopped
        FUNC0(FUNC2(TIMER_EVENTS, TIMER_EVENT_STOPPED, NULL, 0, portMAX_DELAY));
    }

    FUNC1(TAG, "%s:%s: timer_expiry_handler, executed %d out of %d times", base, FUNC4(base, id), count, TIMER_EXPIRIES_COUNT);
}