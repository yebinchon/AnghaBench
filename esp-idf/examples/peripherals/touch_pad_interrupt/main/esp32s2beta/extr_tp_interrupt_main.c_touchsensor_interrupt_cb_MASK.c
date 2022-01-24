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
struct TYPE_3__ {int intr_mask; int /*<<< orphan*/  pad_val; int /*<<< orphan*/  pad_num; int /*<<< orphan*/  pad_status; } ;
typedef  TYPE_1__ touch_event_t ;

/* Variables and functions */
 int TOUCH_PAD_INTR_MASK_DONE ; 
 int pdFALSE ; 
 int pdTRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  que_touch ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int*) ; 

__attribute__((used)) static void FUNC6(void *arg)
{
    int task_awoken = pdFALSE;
    touch_event_t evt;

    evt.intr_mask = FUNC4();
    evt.pad_status = FUNC3();
    evt.pad_num = FUNC2();

    if (evt.intr_mask & TOUCH_PAD_INTR_MASK_DONE) {
        FUNC1(evt.pad_num, &evt.pad_val);
    }
    FUNC5(que_touch, &evt, &task_awoken);
    if (task_awoken == pdTRUE) {
        FUNC0();
    }
}