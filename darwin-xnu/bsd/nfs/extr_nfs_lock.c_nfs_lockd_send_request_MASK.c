#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  mach_port_t ;
typedef  int kern_return_t ;
struct TYPE_4__ {int /*<<< orphan*/  l_whence; int /*<<< orphan*/  l_type; int /*<<< orphan*/  l_pid; int /*<<< orphan*/  l_len; int /*<<< orphan*/  l_start; } ;
struct TYPE_5__ {int /*<<< orphan*/  lm_fh; int /*<<< orphan*/  lm_fh_len; int /*<<< orphan*/  lm_cred; int /*<<< orphan*/  lm_addr; TYPE_1__ lm_fl; int /*<<< orphan*/  lm_xid; int /*<<< orphan*/  lm_flags; int /*<<< orphan*/  lm_version; } ;
typedef  TYPE_2__ LOCKD_MSG ;

/* Variables and functions */
 int EAGAIN ; 
 int EINTR ; 
 int ENOTSUP ; 
 int /*<<< orphan*/  IPC_PORT_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int KERN_SUCCESS ; 
 int /*<<< orphan*/  MACH_MAX_TRIES ; 
#define  MACH_SEND_INTERRUPTED 128 
 int MIG_SERVER_DIED ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

int
FUNC6(LOCKD_MSG *msg, int interruptable)
{
	kern_return_t kr;
	int retries = 0;
	mach_port_t lockd_port = IPC_PORT_NULL;

	kr = FUNC1(FUNC2(), &lockd_port);
	if (kr != KERN_SUCCESS || !FUNC0(lockd_port))
		return (ENOTSUP);

	do {
		/* In the kernel all mach messaging is interruptable */
		do {
			kr = FUNC4(
				lockd_port,
				msg->lm_version,
				msg->lm_flags,
				msg->lm_xid,
				msg->lm_fl.l_start,
				msg->lm_fl.l_len,
				msg->lm_fl.l_pid,
				msg->lm_fl.l_type,
				msg->lm_fl.l_whence,
				(uint32_t *)&msg->lm_addr,
				(uint32_t *)&msg->lm_cred,
				msg->lm_fh_len,
				msg->lm_fh);
			if (kr != KERN_SUCCESS)
				FUNC5("lockd_request received %d!\n", kr);
		} while (!interruptable && kr == MACH_SEND_INTERRUPTED);
	} while (kr == MIG_SERVER_DIED && retries++ < MACH_MAX_TRIES);

	FUNC3(lockd_port);
	switch (kr) {
	case MACH_SEND_INTERRUPTED: 
		return (EINTR);
	default:
		/*
		 * Other MACH or MIG errors we will retry. Eventually
		 * we will call nfs_down and allow the user to disable 
		 * locking.
		 */
		return (EAGAIN);
	}
}