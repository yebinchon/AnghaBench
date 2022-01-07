
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_1__* proc_t ;
typedef int pid_t ;
struct TYPE_5__ {int task; } ;


 int EINVAL ;
 int ESRCH ;
 TYPE_1__* PROC_NULL ;
 int TASK_POLICY_DARWIN_BG ;
 TYPE_1__* proc_find (int ) ;
 scalar_t__ proc_get_effective_task_policy (int ,int ) ;
 int proc_rele (TYPE_1__*) ;

int
proc_pidbackgrounded(pid_t pid, uint32_t* state)
{
 proc_t target_proc = PROC_NULL;

 if (state == ((void*)0))
  return(EINVAL);

 target_proc = proc_find(pid);

 if (target_proc == PROC_NULL)
  return(ESRCH);

 if ( proc_get_effective_task_policy(target_proc->task, TASK_POLICY_DARWIN_BG) ) {
  *state = 1;
 } else {
  *state = 0;
 }

 proc_rele(target_proc);
 return (0);
}
