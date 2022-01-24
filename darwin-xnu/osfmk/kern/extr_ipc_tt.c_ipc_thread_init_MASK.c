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
typedef  TYPE_1__* thread_t ;
typedef  scalar_t__ ipc_port_t ;
typedef  int /*<<< orphan*/  ipc_kobject_t ;
struct TYPE_3__ {scalar_t__ ith_rpc_reply; int /*<<< orphan*/  ith_messages; scalar_t__ ith_assertions; int /*<<< orphan*/ * exc_actions; int /*<<< orphan*/ * ith_special_reply_port; int /*<<< orphan*/  ith_sself; scalar_t__ ith_self; } ;

/* Variables and functions */
 int /*<<< orphan*/  IKOT_THREAD ; 
 scalar_t__ IP_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void
FUNC5(
	thread_t	thread)
{
	ipc_port_t	kport;

	kport = FUNC2();
	if (kport == IP_NULL)
		FUNC4("ipc_thread_init");

	thread->ith_self = kport;
	thread->ith_sself = FUNC3(kport);
	thread->ith_special_reply_port = NULL;
	thread->exc_actions = NULL;

	FUNC1(kport, (ipc_kobject_t)thread, IKOT_THREAD);

#if IMPORTANCE_INHERITANCE
	thread->ith_assertions = 0;
#endif

	FUNC0(&thread->ith_messages);

	thread->ith_rpc_reply = IP_NULL;
}