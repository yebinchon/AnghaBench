
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ proc_t ;
typedef int kauth_cred_t ;
typedef int integer_t ;


 int ENOTSUP ;
 int EPERM ;
 int PRIV_SETPRIORITY_DARWIN_ROLE ;
 int PROC_FLAG_APPLICATION ;
 int TASK_POLICY_ATTRIBUTE ;
 int TASK_POLICY_ROLE ;
 int kauth_cred_get () ;
 scalar_t__ kauth_cred_getruid (int ) ;
 scalar_t__ kauth_cred_getuid (int ) ;
 int kauth_cred_issuser (int ) ;
 int kauth_cred_proc_ref (scalar_t__) ;
 int kauth_cred_unref (int *) ;
 int mac_proc_check_sched (scalar_t__,scalar_t__) ;
 scalar_t__ priv_check_cred (int ,int ,int ) ;
 int proc_darwin_role_to_task_role (int,int *) ;
 int proc_get_darwinbgstate (int ,int*) ;
 int proc_set_task_policy (int ,int ,int ,int ) ;
 int proc_task (scalar_t__) ;

__attribute__((used)) static int
proc_set_darwin_role(proc_t curp, proc_t targetp, int priority)
{
 int error = 0;
 uint32_t flagsp = 0;

 kauth_cred_t ucred, target_cred;

 ucred = kauth_cred_get();
 target_cred = kauth_cred_proc_ref(targetp);

 if (!kauth_cred_issuser(ucred) && kauth_cred_getruid(ucred) &&
     kauth_cred_getuid(ucred) != kauth_cred_getuid(target_cred) &&
     kauth_cred_getruid(ucred) != kauth_cred_getuid(target_cred)) {
  if (priv_check_cred(ucred, PRIV_SETPRIORITY_DARWIN_ROLE, 0) != 0) {
   error = EPERM;
   goto out;
  }
 }

 if (curp != targetp) {




 }

 proc_get_darwinbgstate(proc_task(targetp), &flagsp);
 if ((flagsp & PROC_FLAG_APPLICATION) != PROC_FLAG_APPLICATION) {
  error = ENOTSUP;
  goto out;
 }

 integer_t role = 0;

 if ((error = proc_darwin_role_to_task_role(priority, &role)))
  goto out;

 proc_set_task_policy(proc_task(targetp), TASK_POLICY_ATTRIBUTE,
                      TASK_POLICY_ROLE, role);

out:
 kauth_cred_unref(&target_cred);
 return (error);
}
