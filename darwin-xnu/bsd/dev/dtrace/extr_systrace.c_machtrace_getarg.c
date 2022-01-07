
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* uthread_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ syscall_arg_t ;
typedef int dtrace_id_t ;
struct TYPE_2__ {scalar_t__ t_dtrace_syscall_args; } ;


 int CPU_DTRACE_NOFAULT ;
 int DTRACE_CPUFLAG_CLEAR (int ) ;
 int DTRACE_CPUFLAG_SET (int ) ;
 int current_thread () ;
 int get_bsdthread_info (int ) ;

__attribute__((used)) static uint64_t
machtrace_getarg(void *arg, dtrace_id_t id, void *parg, int argno, int aframes)
{
#pragma unused(arg,id,parg,aframes)
 uint64_t val = 0;
 syscall_arg_t *stack = (syscall_arg_t *)((void*)0);

 uthread_t uthread = (uthread_t)get_bsdthread_info(current_thread());

 if (uthread)
  stack = (syscall_arg_t *)uthread->t_dtrace_syscall_args;

 if (!stack)
  return(0);

 DTRACE_CPUFLAG_SET(CPU_DTRACE_NOFAULT);

 val = (uint64_t)*(stack+argno);
 DTRACE_CPUFLAG_CLEAR(CPU_DTRACE_NOFAULT);
 return (val);
}
