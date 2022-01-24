#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* thread_t ;
typedef  scalar_t__ ipc_port_t ;
struct TYPE_7__ {scalar_t__ ith_self; scalar_t__ ith_sself; scalar_t__ ith_assertions; scalar_t__ ith_special_reply_port; scalar_t__ ith_rpc_reply; int /*<<< orphan*/  ith_messages; TYPE_1__* exc_actions; } ;
struct TYPE_6__ {scalar_t__ port; } ;

/* Variables and functions */
 int EXC_TYPES_COUNT ; 
 int FIRST_EXCEPTION ; 
 scalar_t__ IP_NULL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

void
FUNC8(
	thread_t	thread)
{
	ipc_port_t	kport = thread->ith_self;

	if (kport != IP_NULL) {
		int			i;

		if (FUNC0(thread->ith_sself))
			FUNC5(thread->ith_sself);

		thread->ith_sself = thread->ith_self = IP_NULL;

		if (thread->exc_actions != NULL) {
			for (i = FIRST_EXCEPTION; i < EXC_TYPES_COUNT; ++i) {
				if (FUNC0(thread->exc_actions[i].port))
					FUNC5(thread->exc_actions[i].port);
			}
			FUNC7(thread);
		}

		FUNC3(kport);
	}

#if IMPORTANCE_INHERITANCE
	assert(thread->ith_assertions == 0);
#endif

	/* unbind the thread special reply port */
	if (FUNC0(thread->ith_special_reply_port)) {
		FUNC6(thread, TRUE);
	}

	FUNC1(FUNC2(&thread->ith_messages));

	if (thread->ith_rpc_reply != IP_NULL)
		FUNC4(thread->ith_rpc_reply);

	thread->ith_rpc_reply = IP_NULL;
}