
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ proc_t ;
typedef int kauth_cred_t ;


 int EPERM ;
 int TASK_POLICY_ATTRIBUTE ;
 int TASK_POLICY_ROLE ;
 int kauth_cred_get () ;
 scalar_t__ kauth_cred_getruid (int ) ;
 scalar_t__ kauth_cred_getuid (int ) ;
 int kauth_cred_issuser (int ) ;
 int kauth_cred_proc_ref (scalar_t__) ;
 int kauth_cred_unref (int *) ;
 int mac_proc_check_sched (scalar_t__,scalar_t__) ;
 int proc_get_task_policy (int ,int ,int ) ;
 int proc_task (scalar_t__) ;
 int proc_task_role_to_darwin_role (int) ;

__attribute__((used)) static int
proc_get_darwin_role(proc_t curp, proc_t targetp, int *priority)
{
 int error = 0;
 int role = 0;

 kauth_cred_t ucred, target_cred;

 ucred = kauth_cred_get();
 target_cred = kauth_cred_proc_ref(targetp);

 if (!kauth_cred_issuser(ucred) && kauth_cred_getruid(ucred) &&
     kauth_cred_getuid(ucred) != kauth_cred_getuid(target_cred) &&
     kauth_cred_getruid(ucred) != kauth_cred_getuid(target_cred)) {
  error = EPERM;
  goto out;
 }

 if (curp != targetp) {




 }

 role = proc_get_task_policy(proc_task(targetp), TASK_POLICY_ATTRIBUTE, TASK_POLICY_ROLE);

 *priority = proc_task_role_to_darwin_role(role);

out:
 kauth_cred_unref(&target_cred);
 return (error);
}
