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
typedef  scalar_t__ portBASE_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  TIMER_0 ; 
 int /*<<< orphan*/  TIMER_GROUP_0 ; 
 int /*<<< orphan*/  isr_count ; 
 int /*<<< orphan*/  isr_semaphore ; 
 scalar_t__ pdFALSE ; 
 scalar_t__ pdTRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static void FUNC4(void *vp_arg)
{
    FUNC2(TIMER_GROUP_0, TIMER_0);
    FUNC1(TIMER_GROUP_0, TIMER_0);
    portBASE_TYPE higher_awoken = pdFALSE;
    isr_count++;
    FUNC3(isr_semaphore, &higher_awoken);
    if (higher_awoken == pdTRUE) {
        FUNC0();
    }
}