#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct session {int dummy; } ;
typedef  TYPE_1__* proc_t ;
typedef  scalar_t__ kauth_cred_t ;
struct TYPE_8__ {struct session* pg_session; } ;
struct TYPE_7__ {TYPE_6__* p_pgrp; } ;

/* Variables and functions */
 scalar_t__ NOCRED ; 
 TYPE_6__* PGRP_NULL ; 
 struct session* SESSION_NULL ; 
 int SIGCONT ; 
 int SIGKILL ; 
 TYPE_1__* initproc ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int
FUNC8(proc_t src, kauth_cred_t uc_src, proc_t dst, int signum)
{
	/* you can signal yourself */
	if (src == dst) {
		return 1;
	}

	/* you can't send the init proc SIGKILL, even if root */
	if (signum == SIGKILL && dst == initproc) {
		return 0;
	}

	 /* otherwise, root can always signal */
	if (FUNC3(uc_src)) {
		return 1;
	}

	/* processes in the same session can send SIGCONT to each other */
	{
		struct session *sess_src = SESSION_NULL;
		struct session *sess_dst = SESSION_NULL;

		/* The session field is protected by the list lock. */
		FUNC6();
		if (src->p_pgrp != PGRP_NULL) {
			sess_src = src->p_pgrp->pg_session;
		}
		if (dst->p_pgrp != PGRP_NULL) {
			sess_dst = dst->p_pgrp->pg_session;
		}
		FUNC7();

		/* allow SIGCONT within session and for processes without session */
		if (signum == SIGCONT && sess_src == sess_dst) {
			return 1;
		}
	}

	/* the source process must be authorized to signal the target */
	{
		int allowed = 0;
		kauth_cred_t uc_dst = NOCRED, uc_ref = NOCRED;

		uc_dst = uc_ref = FUNC4(dst);

		/*
		 * If the real or effective UID of the sender matches the real or saved
		 * UID of the target, allow the signal to be sent.
		 */
		if (FUNC0(uc_src) == FUNC0(uc_dst) ||
			FUNC0(uc_src) == FUNC1(uc_dst) ||
			FUNC2(uc_src) == FUNC0(uc_dst) ||
			FUNC2(uc_src) == FUNC1(uc_dst)) {
			allowed = 1;
		}

		if (uc_ref != NOCRED) {
			FUNC5(&uc_ref);
			uc_ref = NOCRED;
		}

		return allowed;
	}
}