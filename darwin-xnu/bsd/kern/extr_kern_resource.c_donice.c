
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_nice; int p_acflag; } ;
typedef int kauth_cred_t ;


 int EACCES ;
 int EPERM ;
 int PRIO_MAX ;
 int PRIO_MIN ;
 scalar_t__ kauth_cred_getruid (int ) ;
 scalar_t__ kauth_cred_getuid (int ) ;
 int kauth_cred_proc_ref (struct proc*) ;
 int kauth_cred_unref (int *) ;
 int mac_proc_check_sched (struct proc*,struct proc*) ;
 int proc_lock (struct proc*) ;
 int proc_unlock (struct proc*) ;
 int resetpriority (struct proc*) ;
 scalar_t__ suser (int ,int *) ;

int
donice(struct proc *curp, struct proc *chgp, int n)
{
 int error = 0;
 kauth_cred_t ucred;
 kauth_cred_t my_cred;

 ucred = kauth_cred_proc_ref(curp);
 my_cred = kauth_cred_proc_ref(chgp);

 if (suser(ucred, ((void*)0)) && kauth_cred_getruid(ucred) &&
     kauth_cred_getuid(ucred) != kauth_cred_getuid(my_cred) &&
     kauth_cred_getruid(ucred) != kauth_cred_getuid(my_cred)) {
  error = EPERM;
  goto out;
 }
 if (n > PRIO_MAX)
  n = PRIO_MAX;
 if (n < PRIO_MIN)
  n = PRIO_MIN;
 if (n < chgp->p_nice && suser(ucred, &curp->p_acflag)) {
  error = EACCES;
  goto out;
 }





 proc_lock(chgp);
 chgp->p_nice = n;
 proc_unlock(chgp);
 (void)resetpriority(chgp);
out:
 kauth_cred_unref(&ucred);
 kauth_cred_unref(&my_cred);
 return (error);
}
