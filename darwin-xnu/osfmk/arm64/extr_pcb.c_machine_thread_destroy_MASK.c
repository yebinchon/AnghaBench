#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* thread_t ;
typedef  int /*<<< orphan*/  arm_context_t ;
struct TYPE_7__ {int /*<<< orphan*/ * cpu_user_debug; } ;
struct TYPE_5__ {int /*<<< orphan*/ * DebugData; int /*<<< orphan*/ * contextData; int /*<<< orphan*/ * uNeon; int /*<<< orphan*/ * upcb; } ;
struct TYPE_6__ {TYPE_1__ machine; } ;

/* Variables and functions */
 int /*<<< orphan*/  ads_zone ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC1 () ; 
 int /*<<< orphan*/  user_ss_zone ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC3(
		       thread_t thread)
{
	arm_context_t *thread_user_ss;

	if (thread->machine.contextData) {
		/* Disassociate the user save state from the thread before we free it. */
		thread_user_ss = thread->machine.contextData;
		thread->machine.upcb = NULL;
		thread->machine.uNeon = NULL;
		thread->machine.contextData = NULL;
		FUNC2(user_ss_zone, thread_user_ss);
	}

        if (thread->machine.DebugData != NULL) {
		if (thread->machine.DebugData == FUNC1()->cpu_user_debug) {
			FUNC0(NULL);
		}

		FUNC2(ads_zone, thread->machine.DebugData);
	}
}