
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct proc_bsdshortinfo {scalar_t__ pbsi_status; char* pbsi_comm; int pbsi_svgid; int pbsi_svuid; int pbsi_rgid; int pbsi_ruid; int pbsi_gid; int pbsi_uid; int pbsi_flags; int pbsi_pgid; int pbsi_ppid; int pbsi_pid; } ;
typedef TYPE_1__* proc_t ;
struct TYPE_5__ {scalar_t__ p_stat; int p_flag; int p_lflag; scalar_t__ task; int p_svgid; int p_svuid; int p_rgid; int p_ruid; int p_gid; int p_uid; int p_comm; int p_pgrpid; int p_ppid; int p_pid; } ;


 int MAXCOMLEN ;
 int PROC_ACTION_STATE (TYPE_1__*) ;
 int PROC_CONTROL_STATE (TYPE_1__*) ;
 int PROC_FLAG_CONTROLT ;
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
 scalar_t__ SZOMB ;
 scalar_t__ TASK_NULL ;
 int bcopy (int *,char*,int) ;
 int bzero (struct proc_bsdshortinfo*,int) ;
 int proc_get_darwinbgstate (scalar_t__,int *) ;

int
proc_pidshortbsdinfo(proc_t p, struct proc_bsdshortinfo * pbsd_shortp, int zombie)
{
 bzero(pbsd_shortp, sizeof(struct proc_bsdshortinfo));
 pbsd_shortp->pbsi_pid = p->p_pid;
 pbsd_shortp->pbsi_ppid = p->p_ppid;
 pbsd_shortp->pbsi_pgid = p->p_pgrpid;
 pbsd_shortp->pbsi_status = p->p_stat;
 bcopy(&p->p_comm, &pbsd_shortp->pbsi_comm[0], MAXCOMLEN);
 pbsd_shortp->pbsi_comm[MAXCOMLEN - 1] = '\0';

 pbsd_shortp->pbsi_flags = 0;
 if ((p->p_flag & P_SYSTEM) == P_SYSTEM)
  pbsd_shortp->pbsi_flags |= PROC_FLAG_SYSTEM;
 if ((p->p_lflag & P_LTRACED) == P_LTRACED)
  pbsd_shortp->pbsi_flags |= PROC_FLAG_TRACED;
 if ((p->p_lflag & P_LEXIT) == P_LEXIT)
  pbsd_shortp->pbsi_flags |= PROC_FLAG_INEXIT;
 if ((p->p_lflag & P_LPPWAIT) == P_LPPWAIT)
  pbsd_shortp->pbsi_flags |= PROC_FLAG_PPWAIT;
 if ((p->p_flag & P_LP64) == P_LP64)
  pbsd_shortp->pbsi_flags |= PROC_FLAG_LP64;
 if ((p->p_flag & P_CONTROLT) == P_CONTROLT)
  pbsd_shortp->pbsi_flags |= PROC_FLAG_CONTROLT;
 if ((p->p_flag & P_THCWD) == P_THCWD)
  pbsd_shortp->pbsi_flags |= PROC_FLAG_THCWD;
 if ((p->p_flag & P_SUGID) == P_SUGID)
  pbsd_shortp->pbsi_flags |= PROC_FLAG_PSUGID;
 if ((p->p_flag & P_EXEC) == P_EXEC)
  pbsd_shortp->pbsi_flags |= PROC_FLAG_EXEC;

 if ((p->p_flag & P_DELAYIDLESLEEP) == P_DELAYIDLESLEEP)
  pbsd_shortp->pbsi_flags |= PROC_FLAG_DELAYIDLESLEEP;


 switch(PROC_CONTROL_STATE(p)) {
  case 128:
   pbsd_shortp->pbsi_flags |= PROC_FLAG_PC_THROTTLE;
   break;
  case 129:
   pbsd_shortp->pbsi_flags |= PROC_FLAG_PC_SUSP;
   break;
  case 130:
   pbsd_shortp->pbsi_flags |= PROC_FLAG_PC_KILL;
   break;
 };

 switch(PROC_ACTION_STATE(p)) {
  case 128:
   pbsd_shortp->pbsi_flags |= PROC_FLAG_PA_THROTTLE;
   break;
  case 129:
   pbsd_shortp->pbsi_flags |= PROC_FLAG_PA_SUSP;
   break;
 };


 if ((zombie == 0) && (p->p_stat != SZOMB) && (p->task != TASK_NULL))
  proc_get_darwinbgstate(p->task, &pbsd_shortp->pbsi_flags);

 pbsd_shortp->pbsi_uid = p->p_uid;
 pbsd_shortp->pbsi_gid = p->p_gid;
 pbsd_shortp->pbsi_ruid = p->p_ruid;
 pbsd_shortp->pbsi_rgid = p->p_rgid;
 pbsd_shortp->pbsi_svuid = p->p_svuid;
 pbsd_shortp->pbsi_svgid = p->p_svgid;

 return(0);
}
