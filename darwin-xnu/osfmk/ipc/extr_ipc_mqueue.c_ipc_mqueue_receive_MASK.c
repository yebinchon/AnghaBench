#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ wait_result_t ;
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  mach_msg_timeout_t ;
typedef  int /*<<< orphan*/  mach_msg_size_t ;
typedef  int /*<<< orphan*/  mach_msg_option_t ;
typedef  int /*<<< orphan*/  ipc_mqueue_t ;
struct TYPE_4__ {scalar_t__ ith_continuation; } ;

/* Variables and functions */
 int THREAD_ABORTSAFE ; 
 int /*<<< orphan*/  THREAD_CONTINUE_NULL ; 
 scalar_t__ THREAD_NOT_WAITING ; 
 scalar_t__ THREAD_WAITING ; 
 int /*<<< orphan*/  c_ipc_mqueue_receive_block_kernel ; 
 int /*<<< orphan*/  c_ipc_mqueue_receive_block_user ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipc_mqueue_receive_continue ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(
	ipc_mqueue_t            mqueue,
	mach_msg_option_t       option,
	mach_msg_size_t         max_size,
	mach_msg_timeout_t      rcv_timeout,
	int                     interruptible)
{
	wait_result_t           wresult;
	thread_t                self = FUNC1();

	FUNC2(mqueue);
	wresult = FUNC3(mqueue, option, max_size,
	                                       rcv_timeout, interruptible,
	                                       self);
	/* mqueue unlocked */
	if (wresult == THREAD_NOT_WAITING)
		return;

	if (wresult == THREAD_WAITING) {
		FUNC0((interruptible == THREAD_ABORTSAFE) ?
			c_ipc_mqueue_receive_block_user++ :
			c_ipc_mqueue_receive_block_kernel++);

		if (self->ith_continuation)
			FUNC5(ipc_mqueue_receive_continue);
			/* NOTREACHED */

		wresult = FUNC5(THREAD_CONTINUE_NULL);
	}
	FUNC4(wresult);
}