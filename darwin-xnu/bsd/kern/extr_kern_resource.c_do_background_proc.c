
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
typedef int kauth_cred_t ;


 int EPERM ;


 int TASK_POLICY_DARWIN_BG ;
 int TASK_POLICY_DISABLE ;
 int TASK_POLICY_ENABLE ;
 int TASK_POLICY_EXTERNAL ;
 int TASK_POLICY_INTERNAL ;
 int kauth_cred_get () ;
 scalar_t__ kauth_cred_getruid (int ) ;
 scalar_t__ kauth_cred_getuid (int ) ;
 int kauth_cred_issuser (int ) ;
 int kauth_cred_proc_ref (struct proc*) ;
 int kauth_cred_unref (int *) ;
 int mac_proc_check_sched (struct proc*,struct proc*) ;
 int proc_set_task_policy (int ,int,int ,int) ;
 int proc_task (struct proc*) ;

__attribute__((used)) static int
do_background_proc(struct proc *curp, struct proc *targetp, int priority)
{

#pragma unused(curp)

 int error = 0;
 kauth_cred_t ucred;
 kauth_cred_t target_cred;
 int external;
 int enable;

 ucred = kauth_cred_get();
 target_cred = kauth_cred_proc_ref(targetp);

 if (!kauth_cred_issuser(ucred) && kauth_cred_getruid(ucred) &&
  kauth_cred_getuid(ucred) != kauth_cred_getuid(target_cred) &&
  kauth_cred_getruid(ucred) != kauth_cred_getuid(target_cred))
 {
  error = EPERM;
  goto out;
 }







 external = (curp == targetp) ? TASK_POLICY_INTERNAL : TASK_POLICY_EXTERNAL;

 switch (priority) {
  case 129:
   enable = TASK_POLICY_ENABLE;
   break;
  case 128:

   goto out;
  default:

   enable = TASK_POLICY_DISABLE;
   break;
 }

 proc_set_task_policy(proc_task(targetp), external, TASK_POLICY_DARWIN_BG, enable);

out:
 kauth_cred_unref(&target_cred);
 return (error);
}
