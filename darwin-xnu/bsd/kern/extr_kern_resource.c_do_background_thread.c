
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ thread_t ;
struct uthread {int uu_flag; } ;


 int EIDRM ;
 int EPERM ;
 int PRIO_DARWIN_BG ;
 int TASK_POLICY_DARWIN_BG ;
 int TASK_POLICY_DISABLE ;
 int TASK_POLICY_ENABLE ;
 int TASK_POLICY_EXTERNAL ;
 int TASK_POLICY_INTERNAL ;
 int UT_VFORK ;
 scalar_t__ current_thread () ;
 struct uthread* get_bsdthread_info (scalar_t__) ;
 int proc_set_thread_policy (scalar_t__,int,int ,int) ;
 scalar_t__ thread_has_qos_policy (scalar_t__) ;
 scalar_t__ thread_is_static_param (scalar_t__) ;
 int thread_remove_qos_policy (scalar_t__) ;

__attribute__((used)) static int
do_background_thread(thread_t thread, int priority)
{
 struct uthread *ut;
 int enable, external;
 int rv = 0;

 ut = get_bsdthread_info(thread);


 if ((ut->uu_flag & UT_VFORK) != 0)
  return(EPERM);


 if (thread_is_static_param(thread)) {
  return(EPERM);
 }


 if (thread_has_qos_policy(thread)) {
  thread_remove_qos_policy(thread);
  rv = EIDRM;
 }


 enable = (priority == PRIO_DARWIN_BG) ? TASK_POLICY_ENABLE : TASK_POLICY_DISABLE;
 external = (current_thread() == thread) ? TASK_POLICY_INTERNAL : TASK_POLICY_EXTERNAL;

 proc_set_thread_policy(thread, external, TASK_POLICY_DARWIN_BG, enable);

 return rv;
}
