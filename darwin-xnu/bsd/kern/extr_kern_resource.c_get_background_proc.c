
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
typedef int kauth_cred_t ;


 int EPERM ;
 int TASK_POLICY_DARWIN_BG ;
 int TASK_POLICY_EXTERNAL ;
 int TASK_POLICY_INTERNAL ;
 int current_task () ;
 int kauth_cred_get () ;
 scalar_t__ kauth_cred_getruid (int ) ;
 scalar_t__ kauth_cred_getuid (int ) ;
 int kauth_cred_issuser (int ) ;
 int kauth_cred_proc_ref (struct proc*) ;
 int kauth_cred_unref (int *) ;
 int proc_get_task_policy (int ,int,int ) ;

__attribute__((used)) static int
get_background_proc(struct proc *curp, struct proc *targetp, int *priority)
{
 int external = 0;
 int error = 0;
 kauth_cred_t ucred, target_cred;

 ucred = kauth_cred_get();
 target_cred = kauth_cred_proc_ref(targetp);

 if (!kauth_cred_issuser(ucred) && kauth_cred_getruid(ucred) &&
     kauth_cred_getuid(ucred) != kauth_cred_getuid(target_cred) &&
     kauth_cred_getruid(ucred) != kauth_cred_getuid(target_cred)) {
  error = EPERM;
  goto out;
 }

 external = (curp == targetp) ? TASK_POLICY_INTERNAL : TASK_POLICY_EXTERNAL;

 *priority = proc_get_task_policy(current_task(), external, TASK_POLICY_DARWIN_BG);

out:
 kauth_cred_unref(&target_cred);
 return (error);
}
