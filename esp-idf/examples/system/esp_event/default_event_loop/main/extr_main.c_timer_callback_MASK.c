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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  TIMER_EVENTS ; 
 int /*<<< orphan*/  TIMER_EVENT_EXPIRY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  portMAX_DELAY ; 

__attribute__((used)) static void FUNC4(void* arg)
{
    FUNC1(TAG, "%s:%s: posting to default loop", TIMER_EVENTS, FUNC3(TIMER_EVENTS, TIMER_EVENT_EXPIRY));
    FUNC0(FUNC2(TIMER_EVENTS, TIMER_EVENT_EXPIRY, NULL, 0, portMAX_DELAY));
}