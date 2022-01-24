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
typedef  scalar_t__ esp_timer_handle_t ;
struct TYPE_3__ {char* name; void* arg; int /*<<< orphan*/ * callback; } ;
typedef  TYPE_1__ esp_timer_create_args_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  oneshot_timer_callback ; 
 int /*<<< orphan*/  periodic_timer_callback ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

void FUNC12(void)
{
    /* Create two timers:
     * 1. a periodic timer which will run every 0.5s, and print a message
     * 2. a one-shot timer which will fire after 5s, and re-start periodic
     *    timer with period of 1s.
     */

    const esp_timer_create_args_t periodic_timer_args = {
            .callback = &periodic_timer_callback,
            /* name is optional, but may help identify the timer when debugging */
            .name = "periodic"
    };

    esp_timer_handle_t periodic_timer;
    FUNC0(FUNC4(&periodic_timer_args, &periodic_timer));
    /* The timer has been created but is not running yet */

    const esp_timer_create_args_t oneshot_timer_args = {
            .callback = &oneshot_timer_callback,
            /* argument specified here will be passed to timer callback function */
            .arg = (void*) periodic_timer,
            .name = "one-shot"
    };
    esp_timer_handle_t oneshot_timer;
    FUNC0(FUNC4(&oneshot_timer_args, &oneshot_timer));

    /* Start the timers */
    FUNC0(FUNC9(periodic_timer, 500000));
    FUNC0(FUNC8(oneshot_timer, 5000000));
    FUNC1(TAG, "Started timers, time since boot: %lld us", FUNC7());

    /* Print debugging information about timers to console every 2 seconds */
    for (int i = 0; i < 5; ++i) {
        FUNC0(FUNC6(stdout));
        FUNC11(2000000);
    }

    /* Timekeeping continues in light sleep, and timers are scheduled
     * correctly after light sleep.
     */
    FUNC1(TAG, "Entering light sleep for 0.5s, time since boot: %lld us",
            FUNC7());

    FUNC0(FUNC3(500000));
    FUNC2();

    FUNC1(TAG, "Woke up from light sleep, time since boot: %lld us",
                FUNC7());

    /* Let the timer run for a little bit more */
    FUNC11(2000000);

    /* Clean up and finish the example */
    FUNC0(FUNC10(periodic_timer));
    FUNC0(FUNC5(periodic_timer));
    FUNC0(FUNC5(oneshot_timer));
    FUNC1(TAG, "Stopped and deleted timers");
}