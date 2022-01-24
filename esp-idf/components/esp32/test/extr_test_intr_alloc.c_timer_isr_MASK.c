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
 int /*<<< orphan*/  TIMER_0 ; 
 int /*<<< orphan*/  TIMER_1 ; 
 int /*<<< orphan*/  TIMER_GROUP_0 ; 
 int /*<<< orphan*/  TIMER_GROUP_1 ; 
 int /*<<< orphan*/ * count ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *arg)
{
    int timer_idx = (int)arg;
    count[timer_idx]++;
    if (timer_idx==0) {
        FUNC1(TIMER_GROUP_0, TIMER_0);
        FUNC0(TIMER_GROUP_0, TIMER_0);
    }
    if (timer_idx==1) {
        FUNC1(TIMER_GROUP_0, TIMER_1);
        FUNC0(TIMER_GROUP_0, TIMER_1);
    }
    if (timer_idx==2) {
        FUNC1(TIMER_GROUP_1, TIMER_0);
        FUNC0(TIMER_GROUP_1, TIMER_0);
    }
    if (timer_idx==3) {
        FUNC1(TIMER_GROUP_1, TIMER_1);
        FUNC0(TIMER_GROUP_1, TIMER_1);
    }
//  ets_printf("int %d\n", timer_idx);
}