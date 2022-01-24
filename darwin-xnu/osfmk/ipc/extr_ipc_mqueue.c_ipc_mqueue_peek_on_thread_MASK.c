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
typedef  TYPE_1__* thread_t ;
typedef  int mach_msg_option_t ;
typedef  TYPE_2__* ipc_mqueue_t ;
struct TYPE_7__ {int /*<<< orphan*/  imq_messages; } ;
struct TYPE_6__ {int /*<<< orphan*/  ith_state; TYPE_2__* ith_peekq; } ;

/* Variables and functions */
 scalar_t__ IKM_NULL ; 
 int MACH_PEEK_MSG ; 
 int /*<<< orphan*/  MACH_PEEK_READY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(
	ipc_mqueue_t        port_mq,
	mach_msg_option_t   option,
	thread_t            thread)
{
	(void)option;
	FUNC0(option & MACH_PEEK_MSG);
	FUNC0(FUNC2(&port_mq->imq_messages) != IKM_NULL);

	/*
	 * Take a reference on the mqueue's associated port:
	 * the peeking thread will be responsible to release this reference
	 * using ip_release_mq()
	 */
	FUNC1(port_mq);
	thread->ith_peekq = port_mq;
	thread->ith_state = MACH_PEEK_READY;
}