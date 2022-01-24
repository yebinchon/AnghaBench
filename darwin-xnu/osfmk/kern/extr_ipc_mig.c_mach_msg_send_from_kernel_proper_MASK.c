#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mach_msg_size_t ;
typedef  scalar_t__ mach_msg_return_t ;
typedef  int /*<<< orphan*/  mach_msg_option_t ;
typedef  int /*<<< orphan*/  mach_msg_header_t ;
typedef  int /*<<< orphan*/  ipc_kmsg_t ;
struct TYPE_2__ {int options; } ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int /*<<< orphan*/  DBG_MACH_IPC ; 
 int /*<<< orphan*/  FUNC0 (int,...) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MACH_IPC_KMSG_INFO ; 
 scalar_t__ MACH_MSG_SUCCESS ; 
 int /*<<< orphan*/  MACH_MSG_TIMEOUT_NONE ; 
 int /*<<< orphan*/  MACH_SEND_KERNEL_DEFAULT ; 
 int /*<<< orphan*/  MACH_SEND_NOIMPORTANCE ; 
 int TH_OPT_SEND_IMPORTANCE ; 
 TYPE_1__* FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

mach_msg_return_t
FUNC8(
	mach_msg_header_t	*msg,
	mach_msg_size_t		send_size)
{
	ipc_kmsg_t kmsg;
	mach_msg_return_t mr;

	FUNC0(FUNC1(DBG_MACH_IPC,MACH_IPC_KMSG_INFO) | DBG_FUNC_START);

	mr = FUNC6(msg, send_size, &kmsg);
	if (mr != MACH_MSG_SUCCESS) {
		FUNC0(FUNC1(DBG_MACH_IPC,MACH_IPC_KMSG_INFO) | DBG_FUNC_END, mr);
		return mr;
	}

	mr = FUNC3(kmsg);
	if (mr != MACH_MSG_SUCCESS) {
		FUNC5(kmsg);
		FUNC0(FUNC1(DBG_MACH_IPC,MACH_IPC_KMSG_INFO) | DBG_FUNC_END, mr);
		return mr;
	}

	/*
	 * respect the thread's SEND_IMPORTANCE option to force importance
	 * donation from the kernel-side of user threads
	 * (11938665 & 23925818)
	 */
	mach_msg_option_t option = MACH_SEND_KERNEL_DEFAULT;
	if (FUNC2()->options & TH_OPT_SEND_IMPORTANCE)
		option &= ~MACH_SEND_NOIMPORTANCE;

	mr = FUNC7(kmsg, option, MACH_MSG_TIMEOUT_NONE);
	if (mr != MACH_MSG_SUCCESS) {
		FUNC4(kmsg);
		FUNC0(FUNC1(DBG_MACH_IPC,MACH_IPC_KMSG_INFO) | DBG_FUNC_END, mr);
	}

	return mr;
}