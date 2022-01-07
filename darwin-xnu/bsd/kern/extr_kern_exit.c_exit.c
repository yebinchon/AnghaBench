
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct exit_args {scalar_t__ rval; } ;
typedef TYPE_1__* proc_t ;
struct TYPE_4__ {int p_xhighbits; } ;


 int THREAD_CONTINUE_NULL ;
 scalar_t__ TRUE ;
 int W_EXITCODE (scalar_t__,int ) ;
 int exit1 (TYPE_1__*,int ,int*) ;
 int thread_block (int ) ;
 int thread_exception_return () ;

__attribute__((noreturn))
void
exit(proc_t p, struct exit_args *uap, int *retval)
{
 p->p_xhighbits = ((uint32_t)(uap->rval) & 0xFF000000) >> 24;
 exit1(p, W_EXITCODE(uap->rval, 0), retval);

 thread_exception_return();

 while (TRUE)
  thread_block(THREAD_CONTINUE_NULL);

}
