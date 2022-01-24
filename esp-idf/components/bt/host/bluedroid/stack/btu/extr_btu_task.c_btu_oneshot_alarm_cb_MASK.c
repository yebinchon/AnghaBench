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
typedef  int /*<<< orphan*/  TIMER_LIST_ENT ;

/* Variables and functions */
 int /*<<< orphan*/  OSI_THREAD_MAX_TIMEOUT ; 
 int /*<<< orphan*/  SIG_BTU_ONESHOT_ALARM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(void *data)
{
    FUNC0(data != NULL);
    TIMER_LIST_ENT *p_tle = (TIMER_LIST_ENT *)data;

    FUNC1(p_tle);

    FUNC2(SIG_BTU_ONESHOT_ALARM, p_tle, OSI_THREAD_MAX_TIMEOUT);
}