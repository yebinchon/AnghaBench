#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct tty {int /*<<< orphan*/  t_dev; } ;
struct session {int /*<<< orphan*/  s_ttypgrpid; scalar_t__ s_ttyvp; } ;
struct proc_bsdinfo {scalar_t__ pbi_status; char* pbi_comm; char* pbi_name; int /*<<< orphan*/  e_tpgid; int /*<<< orphan*/  e_tdev; int /*<<< orphan*/  pbi_pjobc; int /*<<< orphan*/  pbi_pgid; int /*<<< orphan*/  pbi_nfiles; int /*<<< orphan*/  pbi_flags; int /*<<< orphan*/  pbi_start_tvusec; int /*<<< orphan*/  pbi_start_tvsec; int /*<<< orphan*/  pbi_nice; int /*<<< orphan*/  pbi_svgid; int /*<<< orphan*/  pbi_svuid; int /*<<< orphan*/  pbi_rgid; int /*<<< orphan*/  pbi_ruid; int /*<<< orphan*/  pbi_gid; int /*<<< orphan*/  pbi_uid; int /*<<< orphan*/  pbi_ppid; int /*<<< orphan*/  pbi_pid; int /*<<< orphan*/  pbi_xstatus; } ;
struct pgrp {int /*<<< orphan*/  pg_jobc; } ;
typedef  TYPE_3__* proc_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
struct TYPE_11__ {int /*<<< orphan*/  tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_13__ {scalar_t__ p_stat; int p_flag; int p_lflag; scalar_t__ task; int /*<<< orphan*/  p_pgrpid; TYPE_2__* p_fd; int /*<<< orphan*/  p_name; int /*<<< orphan*/  p_comm; TYPE_1__ p_start; int /*<<< orphan*/  p_nice; int /*<<< orphan*/  p_ppid; int /*<<< orphan*/  p_pid; int /*<<< orphan*/  p_xstat; } ;
struct TYPE_12__ {int /*<<< orphan*/  fd_nfiles; } ;

/* Variables and functions */
 int MAXCOMLEN ; 
 int /*<<< orphan*/  NODEV ; 
 struct pgrp* PGRP_NULL ; 
 int FUNC0 (TYPE_3__*) ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  PROC_FLAG_CONTROLT ; 
 int /*<<< orphan*/  PROC_FLAG_CTTY ; 
 int /*<<< orphan*/  PROC_FLAG_DELAYIDLESLEEP ; 
 int /*<<< orphan*/  PROC_FLAG_EXEC ; 
 int /*<<< orphan*/  PROC_FLAG_INEXIT ; 
 int /*<<< orphan*/  PROC_FLAG_LP64 ; 
 int /*<<< orphan*/  PROC_FLAG_PA_SUSP ; 
 int /*<<< orphan*/  PROC_FLAG_PA_THROTTLE ; 
 int /*<<< orphan*/  PROC_FLAG_PC_KILL ; 
 int /*<<< orphan*/  PROC_FLAG_PC_SUSP ; 
 int /*<<< orphan*/  PROC_FLAG_PC_THROTTLE ; 
 int /*<<< orphan*/  PROC_FLAG_PPWAIT ; 
 int /*<<< orphan*/  PROC_FLAG_PSUGID ; 
 int /*<<< orphan*/  PROC_FLAG_SLEADER ; 
 int /*<<< orphan*/  PROC_FLAG_SYSTEM ; 
 int /*<<< orphan*/  PROC_FLAG_THCWD ; 
 int /*<<< orphan*/  PROC_FLAG_TRACED ; 
 int P_CONTROLT ; 
 int P_DELAYIDLESLEEP ; 
 int P_EXEC ; 
 int P_LEXIT ; 
 int P_LP64 ; 
 int P_LPPWAIT ; 
 int P_LTRACED ; 
#define  P_PCKILL 130 
#define  P_PCSUSP 129 
#define  P_PCTHROTTLE 128 
 int P_SUGID ; 
 int P_SYSTEM ; 
 int P_THCWD ; 
 struct session* SESSION_NULL ; 
 struct tty* FUNC2 (struct session*) ; 
 scalar_t__ FUNC3 (TYPE_3__*,struct session*) ; 
 scalar_t__ SZOMB ; 
 scalar_t__ TASK_NULL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct proc_bsdinfo*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ *) ; 
 struct pgrp* FUNC16 (TYPE_3__*) ; 
 struct session* FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (struct session*) ; 

int 
FUNC19(proc_t p, struct proc_bsdinfo * pbsd, int zombie)
{
	struct tty *tp;
	struct  session *sessionp = NULL;
	struct pgrp * pg;
	kauth_cred_t my_cred;

	pg = FUNC16(p);
	sessionp = FUNC17(p);

	my_cred = FUNC12(p);
	FUNC5(pbsd, sizeof(struct proc_bsdinfo));
	pbsd->pbi_status = p->p_stat;
	pbsd->pbi_xstatus = p->p_xstat;
	pbsd->pbi_pid = p->p_pid;
	pbsd->pbi_ppid = p->p_ppid;
	pbsd->pbi_uid = FUNC11(my_cred);
	pbsd->pbi_gid = FUNC6(my_cred); 
	pbsd->pbi_ruid =  FUNC8(my_cred);
	pbsd->pbi_rgid = FUNC7(my_cred);
	pbsd->pbi_svuid =  FUNC10(my_cred);
	pbsd->pbi_svgid = FUNC9(my_cred);
	FUNC13(&my_cred);
	
	pbsd->pbi_nice = p->p_nice;
	pbsd->pbi_start_tvsec = p->p_start.tv_sec;
	pbsd->pbi_start_tvusec = p->p_start.tv_usec;
	FUNC4(&p->p_comm, &pbsd->pbi_comm[0], MAXCOMLEN);
	pbsd->pbi_comm[MAXCOMLEN - 1] = '\0';
	FUNC4(&p->p_name, &pbsd->pbi_name[0], 2*MAXCOMLEN);
	pbsd->pbi_name[(2*MAXCOMLEN) - 1] = '\0';

	pbsd->pbi_flags = 0;	
	if ((p->p_flag & P_SYSTEM) == P_SYSTEM) 
		pbsd->pbi_flags |= PROC_FLAG_SYSTEM;
	if ((p->p_lflag & P_LTRACED) == P_LTRACED) 
		pbsd->pbi_flags |= PROC_FLAG_TRACED;
	if ((p->p_lflag & P_LEXIT) == P_LEXIT) 
		pbsd->pbi_flags |= PROC_FLAG_INEXIT;
	if ((p->p_lflag & P_LPPWAIT) == P_LPPWAIT) 
		pbsd->pbi_flags |= PROC_FLAG_PPWAIT;
	if ((p->p_flag & P_LP64) == P_LP64) 
		pbsd->pbi_flags |= PROC_FLAG_LP64;
	if ((p->p_flag & P_CONTROLT) == P_CONTROLT) 
		pbsd->pbi_flags |= PROC_FLAG_CONTROLT;
	if ((p->p_flag & P_THCWD) == P_THCWD) 
		pbsd->pbi_flags |= PROC_FLAG_THCWD;
	if ((p->p_flag & P_SUGID) == P_SUGID) 
		pbsd->pbi_flags |= PROC_FLAG_PSUGID;
	if ((p->p_flag & P_EXEC) == P_EXEC) 
		pbsd->pbi_flags |= PROC_FLAG_EXEC;

	if (sessionp != SESSION_NULL) {
		if (FUNC3(p, sessionp))
			pbsd->pbi_flags |= PROC_FLAG_SLEADER;
		if (sessionp->s_ttyvp)
			pbsd->pbi_flags |= PROC_FLAG_CTTY;
	}

#if !CONFIG_EMBEDDED
	if ((p->p_flag & P_DELAYIDLESLEEP) == P_DELAYIDLESLEEP) 
		pbsd->pbi_flags |= PROC_FLAG_DELAYIDLESLEEP;
#endif /* !CONFIG_EMBEDDED */

	switch(FUNC1(p)) {
		case P_PCTHROTTLE:
			pbsd->pbi_flags |= PROC_FLAG_PC_THROTTLE;
			break;
		case P_PCSUSP:
			pbsd->pbi_flags |= PROC_FLAG_PC_SUSP;
			break;
		case P_PCKILL:
			pbsd->pbi_flags |= PROC_FLAG_PC_KILL;
			break;
	};

	switch(FUNC0(p)) {
		case P_PCTHROTTLE:
			pbsd->pbi_flags |= PROC_FLAG_PA_THROTTLE;
			break;
		case P_PCSUSP:
			pbsd->pbi_flags |= PROC_FLAG_PA_SUSP;
			break;
	};
		
	/* if process is a zombie skip bg state */
	if ((zombie == 0) && (p->p_stat != SZOMB) && (p->task != TASK_NULL))
		FUNC15(p->task, &pbsd->pbi_flags);

	if (zombie == 0)
		pbsd->pbi_nfiles = p->p_fd->fd_nfiles;
	
	pbsd->e_tdev = NODEV;
	if (pg != PGRP_NULL) {
		pbsd->pbi_pgid = p->p_pgrpid;
		pbsd->pbi_pjobc = pg->pg_jobc;
		if ((p->p_flag & P_CONTROLT) && (sessionp != SESSION_NULL) && (tp = FUNC2(sessionp))) {
			pbsd->e_tdev = tp->t_dev;
			pbsd->e_tpgid = sessionp->s_ttypgrpid;
		}
	} 
	if (sessionp != SESSION_NULL)
		FUNC18(sessionp);
	if (pg != PGRP_NULL)
		FUNC14(pg);

	return(0);
}