
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* uthread_t ;
typedef int uint64_t ;
typedef int dtrace_id_t ;
struct TYPE_2__ {int * t_dtrace_syscall_args; } ;


 int CPU_DTRACE_NOFAULT ;
 int DTRACE_CPUFLAG_CLEAR (int ) ;
 int DTRACE_CPUFLAG_SET (int ) ;
 int SYSTRACE_NARGS ;
 int current_thread () ;
 int get_bsdthread_info (int ) ;

__attribute__((used)) static uint64_t
systrace_getargval(void *arg, dtrace_id_t id, void *parg, int argno, int aframes)
{
#pragma unused(arg,id,parg,aframes)
 uint64_t val = 0;
 uint64_t *uargs = ((void*)0);

 uthread_t uthread = (uthread_t)get_bsdthread_info(current_thread());

 if (uthread)
  uargs = uthread->t_dtrace_syscall_args;
 if (!uargs)
  return(0);
 if (argno < 0 || argno >= SYSTRACE_NARGS)
  return(0);

 DTRACE_CPUFLAG_SET(CPU_DTRACE_NOFAULT);
 val = uargs[argno];
 DTRACE_CPUFLAG_CLEAR(CPU_DTRACE_NOFAULT);
 return (val);
}
