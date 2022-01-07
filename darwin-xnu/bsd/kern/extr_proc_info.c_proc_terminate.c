
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
typedef int kauth_cred_t ;
typedef int int32_t ;
struct TYPE_9__ {int task; } ;


 int AUDIT_ARG (int,...) ;
 int EINVAL ;
 int EPERM ;
 int ESRCH ;
 int SIGKILL ;
 int SIGTERM ;
 int TASK_POLICY_ATTRIBUTE ;
 int TASK_POLICY_ENABLE ;
 int TASK_POLICY_TERMINATED ;
 int cansignal (TYPE_1__*,int ,TYPE_1__*,int ) ;
 TYPE_1__* current_proc () ;
 int kauth_cred_get () ;
 int memorystatus_on_terminate (TYPE_1__*) ;
 TYPE_1__* proc_find (int) ;
 int proc_rele (TYPE_1__*) ;
 int proc_set_task_policy (int ,int ,int ,int ) ;
 int process ;
 int psignal (TYPE_1__*,int) ;
 int signum ;

int
proc_terminate(int pid, int32_t *retval)
{
 int error = 0;
 proc_t p;
 kauth_cred_t uc = kauth_cred_get();
 int sig;







 if (pid <= 0 || retval == ((void*)0)) {
  return (EINVAL);
 }

 if ((p = proc_find(pid)) == ((void*)0)) {
  return (ESRCH);
 }







 if (!cansignal(current_proc(), uc, p, SIGKILL)) {
  error = EPERM;
  goto out;
 }


 if (p == current_proc()) {
  error = EPERM;
  goto out;
 }





 sig = SIGTERM;


 proc_set_task_policy(p->task, TASK_POLICY_ATTRIBUTE,
                      TASK_POLICY_TERMINATED, TASK_POLICY_ENABLE);

 psignal(p, sig);
 *retval = sig;

out:
 proc_rele(p);

 return error;
}
