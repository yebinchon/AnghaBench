
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* uthread_t ;
typedef scalar_t__ user_addr_t ;
typedef int thread_t ;
struct sigacts {scalar_t__* ps_sigact; int ps_sigonstack; } ;
typedef TYPE_2__* proc_t ;
typedef void* mach_exception_subcode_t ;
typedef int mach_exception_code_t ;
typedef int kern_return_t ;
struct TYPE_7__ {scalar_t__ user_stack; int p_sigignore; int p_sigcatch; struct sigacts* p_sigacts; } ;
struct TYPE_6__ {int uu_sigwait; int uu_sigmask; int uu_exception; void* uu_subcode; } ;


 int KERN_FAILURE ;
 int KERN_PROTECTION_FAILURE ;
 int KERN_SUCCESS ;
 scalar_t__ MAXSSIZ ;
 int SIGBUS ;
 size_t SIGSEGV ;
 scalar_t__ SIG_DFL ;
 scalar_t__ SIG_IGN ;
 int TRUE ;
 TYPE_1__* get_bsdthread_info (int ) ;
 TYPE_2__* proc_findthread (int ) ;
 int proc_rele (TYPE_2__*) ;
 int sigmask (int) ;
 int threadsignal (int ,int,int ,int ) ;
 int ux_exception (int,int ,void*) ;

kern_return_t
handle_ux_exception(thread_t thread,
                    int exception,
                    mach_exception_code_t code,
                    mach_exception_subcode_t subcode)
{

 proc_t p = proc_findthread(thread);


 if (p == ((void*)0))
  return KERN_FAILURE;


 int ux_signal = ux_exception(exception, code, subcode);

 uthread_t ut = get_bsdthread_info(thread);
 if (code == KERN_PROTECTION_FAILURE &&
     ux_signal == SIGBUS) {
  user_addr_t sp = subcode;

  user_addr_t stack_max = p->user_stack;
  user_addr_t stack_min = p->user_stack - MAXSSIZ;
  if (sp >= stack_min && sp < stack_max) {




   ux_signal = SIGSEGV;






   int mask = sigmask(ux_signal);
   struct sigacts *ps = p->p_sigacts;
   if ((p->p_sigignore & mask) ||
       (ut->uu_sigwait & mask) ||
       (ut->uu_sigmask & mask) ||
       (ps->ps_sigact[SIGSEGV] == SIG_IGN) ||
       (! (ps->ps_sigonstack & mask))) {
    p->p_sigignore &= ~mask;
    p->p_sigcatch &= ~mask;
    ps->ps_sigact[SIGSEGV] = SIG_DFL;
    ut->uu_sigwait &= ~mask;
    ut->uu_sigmask &= ~mask;
   }
  }
 }


 if (ux_signal != 0) {
  ut->uu_exception = exception;

  ut->uu_subcode = subcode;
  threadsignal(thread, ux_signal, code, TRUE);
 }

 proc_rele(p);

 return KERN_SUCCESS;
}
