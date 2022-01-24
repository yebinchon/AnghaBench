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
 int /*<<< orphan*/  OSI_THREAD_MAX_TIMEOUT ; 
 int /*<<< orphan*/  SIG_BTU_BTA_MSG ; 
 int FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

void FUNC2(void *p_msg)
{
    // There is a race condition that occurs if the stack is shut down while
    // there is a procedure in progress that can schedule a task via this
    // message queue. This causes |btu_bta_msg_queue| to get cleaned up before
    // it gets used here; hence we check for NULL before using it.
    if (FUNC0(SIG_BTU_BTA_MSG, p_msg, OSI_THREAD_MAX_TIMEOUT) == false) {
        FUNC1(p_msg);
    }
}