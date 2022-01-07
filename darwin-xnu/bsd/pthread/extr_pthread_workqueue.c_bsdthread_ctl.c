
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
typedef int thread_qos_t ;
struct proc {int dummy; } ;
struct bsdthread_ctl_args {int cmd; scalar_t__ arg2; int arg1; int arg3; } ;
typedef int pthread_priority_t ;
typedef int mach_port_name_t ;
typedef enum workq_set_self_flags { ____Placeholder_workq_set_self_flags } workq_set_self_flags ;
 int EINVAL ;
 int ENOTSUP ;
 int ENSURE_UNUSED (int ) ;
 int bsdthread_add_explicit_override (struct proc*,int ,int ,int ) ;
 int bsdthread_get_max_parallelism (int ,unsigned long,int*) ;
 int bsdthread_remove_explicit_override (struct proc*,int ,int ) ;
 int bsdthread_set_self (struct proc*,int ,int ,int ,int) ;
 int current_thread () ;
 int workq_thread_add_dispatch_override (struct proc*,int ,int ,int ) ;
 int workq_thread_reset_dispatch_override (struct proc*,int ) ;

int
bsdthread_ctl(struct proc *p, struct bsdthread_ctl_args *uap, int *retval)
{
 switch (uap->cmd) {
 case 130:
  return bsdthread_add_explicit_override(p, (mach_port_name_t)uap->arg1,
    (pthread_priority_t)uap->arg2, uap->arg3);
 case 132:
  ENSURE_UNUSED(uap->arg3);
  return bsdthread_remove_explicit_override(p, (mach_port_name_t)uap->arg1,
    (user_addr_t)uap->arg2);

 case 133:
  return workq_thread_add_dispatch_override(p, (mach_port_name_t)uap->arg1,
    (pthread_priority_t)uap->arg2, uap->arg3);
 case 131:
  return workq_thread_reset_dispatch_override(p, current_thread());

 case 128:
  return bsdthread_set_self(p, current_thread(),
    (pthread_priority_t)uap->arg1, (mach_port_name_t)uap->arg2,
    (enum workq_set_self_flags)uap->arg3);

 case 134:
  ENSURE_UNUSED(uap->arg3);
  return bsdthread_get_max_parallelism((thread_qos_t)uap->arg1,
    (unsigned long)uap->arg2, retval);

 case 129:
 case 136:
 case 135:

  return ENOTSUP;

 default:
  return EINVAL;
 }
}
