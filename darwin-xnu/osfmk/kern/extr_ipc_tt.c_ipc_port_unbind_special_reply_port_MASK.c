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
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/ * ipc_port_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_3__ {int /*<<< orphan*/ * ith_special_reply_port; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  IPC_PORT_ADJUST_SR_CLEAR_SPECIAL_REPLY ; 
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static kern_return_t
FUNC5(
	thread_t thread,
	boolean_t unbind_active_port)
{
	ipc_port_t special_reply_port = thread->ith_special_reply_port;

	FUNC1(special_reply_port);

	/* Return error if port active and unbind_active_port set to FALSE */
	if (unbind_active_port == FALSE && FUNC0(special_reply_port)) {
		FUNC3(special_reply_port);
		return KERN_FAILURE;
	}

	thread->ith_special_reply_port = NULL;
	FUNC4(special_reply_port, NULL,
		IPC_PORT_ADJUST_SR_CLEAR_SPECIAL_REPLY, FALSE);
	/* port unlocked */

	FUNC2(special_reply_port);
	return KERN_SUCCESS;
}