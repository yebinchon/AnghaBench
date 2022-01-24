#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct vnode {int dummy; } ;
struct tty {int /*<<< orphan*/  t_dev; } ;
struct timeval {int tv_sec; int tv_usec; } ;
struct session {int dummy; } ;
struct rusage {int ru_ixrss; int ru_idrss; int ru_isrss; int ru_inblock; int ru_oublock; } ;
struct acct {int ac_mem; int /*<<< orphan*/  ac_flag; int /*<<< orphan*/  ac_tty; int /*<<< orphan*/  ac_gid; int /*<<< orphan*/  ac_uid; void* ac_io; void* ac_etime; int /*<<< orphan*/  ac_btime; void* ac_stime; void* ac_utime; int /*<<< orphan*/  ac_comm; } ;
typedef  TYPE_2__* proc_t ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
typedef  int /*<<< orphan*/  caddr_t ;
typedef  int /*<<< orphan*/  an_acct ;
struct TYPE_13__ {int /*<<< orphan*/  tv_sec; } ;
struct TYPE_12__ {int p_flag; int /*<<< orphan*/  p_acflag; TYPE_1__* p_stats; TYPE_4__ p_start; int /*<<< orphan*/  p_comm; } ;
struct TYPE_11__ {struct rusage p_ru; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int IO_APPEND ; 
 int IO_UNIT ; 
 int /*<<< orphan*/  NODEV ; 
 struct vnode* NULLVP ; 
 int P_CONTROLT ; 
 struct session* SESSION_NULL ; 
 struct tty* FUNC2 (struct session*) ; 
 struct tty* TTY_NULL ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  UIO_WRITE ; 
 struct vnode* acctp ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct timeval*,struct timeval*,int /*<<< orphan*/ *) ; 
 void* FUNC5 (int,int) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct timeval*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 struct session* FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (struct session*) ; 
 int tick ; 
 int /*<<< orphan*/  FUNC15 (struct timeval*,struct timeval*) ; 
 int /*<<< orphan*/  FUNC16 (struct timeval*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC17 (struct tty*) ; 
 int /*<<< orphan*/  FUNC18 (struct tty*) ; 
 int FUNC19 (int /*<<< orphan*/ ,struct vnode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int*,TYPE_2__*) ; 
 int FUNC20 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC21 (struct vnode*) ; 

int
FUNC22(proc_t p)
{
	struct acct an_acct;
	struct rusage rup, *r;
	struct timeval ut, st, tmp;
	int t;
	int error;
	struct vnode *vp;
	kauth_cred_t safecred;
	struct session * sessp;
	struct  tty *tp;

	/* If accounting isn't enabled, don't bother */
	FUNC0();
	vp = acctp;
	if (vp == NULLVP) {
		FUNC1();
		return (0);
	}

	/*
	 * Get process accounting information.
	 */

	/* (1) The name of the command that ran */
	FUNC3(p->p_comm, an_acct.ac_comm, sizeof an_acct.ac_comm);

	/* (2) The amount of user and system time that was used */
	FUNC4(p, &ut, &st, NULL);
	an_acct.ac_utime = FUNC5(ut.tv_sec, ut.tv_usec);
	an_acct.ac_stime = FUNC5(st.tv_sec, st.tv_usec);

	/* (3) The elapsed time the commmand ran (and its starting time) */
	an_acct.ac_btime = p->p_start.tv_sec;
	FUNC10(&tmp);
	FUNC16(&tmp, &p->p_start);
	an_acct.ac_etime = FUNC5(tmp.tv_sec, tmp.tv_usec);

	/* (4) The average amount of memory used */
	FUNC11(p);
	rup = p->p_stats->p_ru;
	FUNC13(p);
	r = &rup;
	tmp = ut;
	FUNC15(&tmp, &st);
	t = tmp.tv_sec * hz + tmp.tv_usec / tick;
	if (t)
		an_acct.ac_mem = (r->ru_ixrss + r->ru_idrss + r->ru_isrss) / t;
	else
		an_acct.ac_mem = 0;

	/* (5) The number of disk I/O operations done */
	an_acct.ac_io = FUNC5(r->ru_inblock + r->ru_oublock, 0);

	/* (6) The UID and GID of the process */
	safecred = FUNC8(p);

	an_acct.ac_uid = FUNC7(safecred);
	an_acct.ac_gid = FUNC6(safecred);

	/* (7) The terminal from which the process was started */
	
	sessp = FUNC12(p);
	if ((p->p_flag & P_CONTROLT) && (sessp != SESSION_NULL) && ((tp = FUNC2(sessp)) != TTY_NULL)) {
		FUNC17(tp);
		an_acct.ac_tty = tp->t_dev;
		FUNC18(tp);
	 }else
		an_acct.ac_tty = NODEV;

	if (sessp != SESSION_NULL)
		FUNC14(sessp);

	/* (8) The boolean flags that tell how the process terminated, etc. */
	an_acct.ac_flag = p->p_acflag;

	/*
	 * Now, just write the accounting information to the file.
	 */
	if ((error = FUNC20(vp)) == 0) {
	        error = FUNC19(UIO_WRITE, vp, (caddr_t)&an_acct, sizeof (an_acct),
				(off_t)0, UIO_SYSSPACE, IO_APPEND|IO_UNIT, safecred,
				(int *)0, p);
		FUNC21(vp);
	}

	FUNC9(&safecred);
	FUNC1();

	return (error);
}