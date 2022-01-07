
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
typedef int kauth_cred_t ;


 int EINVAL ;
 int EPERM ;
 int FALSE ;


 int TRUE ;
 int kauth_cred_get () ;
 scalar_t__ kauth_cred_getruid (int ) ;
 scalar_t__ kauth_cred_getuid (int ) ;
 int kauth_cred_issuser (int ) ;
 int kauth_cred_proc_ref (struct proc*) ;
 int kauth_cred_unref (int *) ;
 int mac_proc_check_sched (struct proc*,struct proc*) ;
 int proc_task (struct proc*) ;
 int task_set_gpu_denied (int ,int ) ;

__attribute__((used)) static int
set_gpudeny_proc(struct proc *curp, struct proc *targetp, int priority)
{
 int error = 0;
 kauth_cred_t ucred;
 kauth_cred_t target_cred;

 ucred = kauth_cred_get();
 target_cred = kauth_cred_proc_ref(targetp);



 if (!kauth_cred_issuser(ucred) && kauth_cred_getruid(ucred) &&
     kauth_cred_getuid(ucred) != kauth_cred_getuid(target_cred) &&
     kauth_cred_getruid(ucred) != kauth_cred_getuid(target_cred)) {
  error = EPERM;
  goto out;
 }

 if (curp == targetp) {
  error = EPERM;
  goto out;
 }







 switch (priority) {
  case 128:
   task_set_gpu_denied(proc_task(targetp), TRUE);
   break;
  case 129:
   task_set_gpu_denied(proc_task(targetp), FALSE);
   break;
  default:
   error = EINVAL;
   goto out;
 }

out:
 kauth_cred_unref(&target_cred);
 return (error);

}
