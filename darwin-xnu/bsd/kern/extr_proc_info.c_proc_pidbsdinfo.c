
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct tty {int t_dev; } ;
struct session {int s_ttypgrpid; scalar_t__ s_ttyvp; } ;
struct proc_bsdinfo {scalar_t__ pbi_status; char* pbi_comm; char* pbi_name; int e_tpgid; int e_tdev; int pbi_pjobc; int pbi_pgid; int pbi_nfiles; int pbi_flags; int pbi_start_tvusec; int pbi_start_tvsec; int pbi_nice; int pbi_svgid; int pbi_svuid; int pbi_rgid; int pbi_ruid; int pbi_gid; int pbi_uid; int pbi_ppid; int pbi_pid; int pbi_xstatus; } ;
struct pgrp {int pg_jobc; } ;
typedef TYPE_3__* proc_t ;
typedef int kauth_cred_t ;
struct TYPE_11__ {int tv_usec; int tv_sec; } ;
struct TYPE_13__ {scalar_t__ p_stat; int p_flag; int p_lflag; scalar_t__ task; int p_pgrpid; TYPE_2__* p_fd; int p_name; int p_comm; TYPE_1__ p_start; int p_nice; int p_ppid; int p_pid; int p_xstat; } ;
struct TYPE_12__ {int fd_nfiles; } ;


 int MAXCOMLEN ;
 int NODEV ;
 struct pgrp* PGRP_NULL ;
 int PROC_ACTION_STATE (TYPE_3__*) ;
 int PROC_CONTROL_STATE (TYPE_3__*) ;
 int PROC_FLAG_CONTROLT ;
 int PROC_FLAG_CTTY ;
 int PROC_FLAG_DELAYIDLESLEEP ;
 int PROC_FLAG_EXEC ;
 int PROC_FLAG_INEXIT ;
 int PROC_FLAG_LP64 ;
 int PROC_FLAG_PA_SUSP ;
 int PROC_FLAG_PA_THROTTLE ;
 int PROC_FLAG_PC_KILL ;
 int PROC_FLAG_PC_SUSP ;
 int PROC_FLAG_PC_THROTTLE ;
 int PROC_FLAG_PPWAIT ;
 int PROC_FLAG_PSUGID ;
 int PROC_FLAG_SLEADER ;
 int PROC_FLAG_SYSTEM ;
 int PROC_FLAG_THCWD ;
 int PROC_FLAG_TRACED ;
 int P_CONTROLT ;
 int P_DELAYIDLESLEEP ;
 int P_EXEC ;
 int P_LEXIT ;
 int P_LP64 ;
 int P_LPPWAIT ;
 int P_LTRACED ;



 int P_SUGID ;
 int P_SYSTEM ;
 int P_THCWD ;
 struct session* SESSION_NULL ;
 struct tty* SESSION_TP (struct session*) ;
 scalar_t__ SESS_LEADER (TYPE_3__*,struct session*) ;
 scalar_t__ SZOMB ;
 scalar_t__ TASK_NULL ;
 int bcopy (int *,char*,int) ;
 int bzero (struct proc_bsdinfo*,int) ;
 int kauth_cred_getgid (int ) ;
 int kauth_cred_getrgid (int ) ;
 int kauth_cred_getruid (int ) ;
 int kauth_cred_getsvgid (int ) ;
 int kauth_cred_getsvuid (int ) ;
 int kauth_cred_getuid (int ) ;
 int kauth_cred_proc_ref (TYPE_3__*) ;
 int kauth_cred_unref (int *) ;
 int pg_rele (struct pgrp*) ;
 int proc_get_darwinbgstate (scalar_t__,int *) ;
 struct pgrp* proc_pgrp (TYPE_3__*) ;
 struct session* proc_session (TYPE_3__*) ;
 int session_rele (struct session*) ;

int
proc_pidbsdinfo(proc_t p, struct proc_bsdinfo * pbsd, int zombie)
{
 struct tty *tp;
 struct session *sessionp = ((void*)0);
 struct pgrp * pg;
 kauth_cred_t my_cred;

 pg = proc_pgrp(p);
 sessionp = proc_session(p);

 my_cred = kauth_cred_proc_ref(p);
 bzero(pbsd, sizeof(struct proc_bsdinfo));
 pbsd->pbi_status = p->p_stat;
 pbsd->pbi_xstatus = p->p_xstat;
 pbsd->pbi_pid = p->p_pid;
 pbsd->pbi_ppid = p->p_ppid;
 pbsd->pbi_uid = kauth_cred_getuid(my_cred);
 pbsd->pbi_gid = kauth_cred_getgid(my_cred);
 pbsd->pbi_ruid = kauth_cred_getruid(my_cred);
 pbsd->pbi_rgid = kauth_cred_getrgid(my_cred);
 pbsd->pbi_svuid = kauth_cred_getsvuid(my_cred);
 pbsd->pbi_svgid = kauth_cred_getsvgid(my_cred);
 kauth_cred_unref(&my_cred);

 pbsd->pbi_nice = p->p_nice;
 pbsd->pbi_start_tvsec = p->p_start.tv_sec;
 pbsd->pbi_start_tvusec = p->p_start.tv_usec;
 bcopy(&p->p_comm, &pbsd->pbi_comm[0], MAXCOMLEN);
 pbsd->pbi_comm[MAXCOMLEN - 1] = '\0';
 bcopy(&p->p_name, &pbsd->pbi_name[0], 2*MAXCOMLEN);
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
  if (SESS_LEADER(p, sessionp))
   pbsd->pbi_flags |= PROC_FLAG_SLEADER;
  if (sessionp->s_ttyvp)
   pbsd->pbi_flags |= PROC_FLAG_CTTY;
 }


 if ((p->p_flag & P_DELAYIDLESLEEP) == P_DELAYIDLESLEEP)
  pbsd->pbi_flags |= PROC_FLAG_DELAYIDLESLEEP;


 switch(PROC_CONTROL_STATE(p)) {
  case 128:
   pbsd->pbi_flags |= PROC_FLAG_PC_THROTTLE;
   break;
  case 129:
   pbsd->pbi_flags |= PROC_FLAG_PC_SUSP;
   break;
  case 130:
   pbsd->pbi_flags |= PROC_FLAG_PC_KILL;
   break;
 };

 switch(PROC_ACTION_STATE(p)) {
  case 128:
   pbsd->pbi_flags |= PROC_FLAG_PA_THROTTLE;
   break;
  case 129:
   pbsd->pbi_flags |= PROC_FLAG_PA_SUSP;
   break;
 };


 if ((zombie == 0) && (p->p_stat != SZOMB) && (p->task != TASK_NULL))
  proc_get_darwinbgstate(p->task, &pbsd->pbi_flags);

 if (zombie == 0)
  pbsd->pbi_nfiles = p->p_fd->fd_nfiles;

 pbsd->e_tdev = NODEV;
 if (pg != PGRP_NULL) {
  pbsd->pbi_pgid = p->p_pgrpid;
  pbsd->pbi_pjobc = pg->pg_jobc;
  if ((p->p_flag & P_CONTROLT) && (sessionp != SESSION_NULL) && (tp = SESSION_TP(sessionp))) {
   pbsd->e_tdev = tp->t_dev;
   pbsd->e_tpgid = sessionp->s_ttypgrpid;
  }
 }
 if (sessionp != SESSION_NULL)
  session_rele(sessionp);
 if (pg != PGRP_NULL)
  pg_rele(pg);

 return(0);
}
