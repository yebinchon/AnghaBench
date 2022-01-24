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
struct TYPE_2__ {int /*<<< orphan*/  timer; int /*<<< orphan*/  group; int /*<<< orphan*/  count; int /*<<< orphan*/ * thnd; } ;
typedef  TYPE_1__ example_event_data_t ;
typedef  scalar_t__ BaseType_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  eSetValueWithOverwrite ; 
 scalar_t__ pdFALSE ; 
 scalar_t__ pdPASS ; 
 scalar_t__ pdTRUE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void FUNC7(void *arg)
{
    example_event_data_t *tim_arg = (example_event_data_t *)arg;

    if (tim_arg->thnd != NULL) {
        if (tim_arg->count++ < 10) {
            BaseType_t xHigherPriorityTaskWoken = pdFALSE;
            FUNC2();
            if (FUNC6(tim_arg->thnd, tim_arg->count, eSetValueWithOverwrite, &xHigherPriorityTaskWoken) != pdPASS) {
                FUNC0(TAG, "Failed to notify task %p", tim_arg->thnd);
            } else {
                FUNC1(tim_arg->count);
                if (xHigherPriorityTaskWoken == pdTRUE) {
                    FUNC3();
                }
            }
        }
    }
    // re-start timer
    FUNC5(tim_arg->group, tim_arg->timer);
    FUNC4(tim_arg->group, tim_arg->timer);
}