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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  blocked_task_handle ; 
 int /*<<< orphan*/  done_sem ; 
 scalar_t__ eBlocked ; 
 scalar_t__ eReady ; 
 scalar_t__ eRunning ; 
 scalar_t__ eSuspended ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  suspended_task_handle ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(void* arg)
{
    //Current task should return eRunning
    FUNC0(FUNC1(FUNC4()) == eRunning);
    //Idle task of current core should return eReady
    FUNC0(FUNC1(FUNC5()) == eReady);
    //Blocked Task should return eBlocked
    FUNC0(FUNC1(blocked_task_handle) == eBlocked);
    //Suspended Task should return eSuspended
    FUNC0(FUNC1(suspended_task_handle) == eSuspended);

    FUNC3(done_sem);
    FUNC2(NULL);
}