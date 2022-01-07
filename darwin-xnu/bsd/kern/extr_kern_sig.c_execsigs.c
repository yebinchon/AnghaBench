
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int thread_t ;
struct TYPE_4__ {int ss_sp; scalar_t__ ss_size; int ss_flags; } ;
struct uthread {int uu_siglist; int uu_flag; TYPE_1__ uu_sigstk; } ;
struct sigacts {scalar_t__ ps_sigonstack; int ps_sigreturn_token; int ps_sigreturn_validation; int * ps_sigact; } ;
typedef TYPE_2__* proc_t ;
struct TYPE_5__ {int p_siglist; int p_sigcatch; int p_sigignore; struct sigacts* p_sigacts; } ;


 int PS_SIGRETURN_VALIDATION_DEFAULT ;
 int SA_DISABLE ;
 int SA_IGNORE ;
 int SIGCONT ;
 int SIG_DFL ;
 int USER_ADDR_NULL ;
 int UT_ALTSTACK ;
 int atomic_store_explicit (int *,int ,int ) ;
 int ffs (long) ;
 scalar_t__ get_bsdthread_info (int ) ;
 int memory_order_relaxed ;
 int read_random (int *,int) ;
 int sigmask (int) ;
 int* sigprop ;

void
execsigs(proc_t p, thread_t thread)
{
 struct sigacts *ps = p->p_sigacts;
 int nc, mask;
 struct uthread *ut;

 ut = (struct uthread *)get_bsdthread_info(thread);
 ut->uu_siglist |= p->p_siglist;
 p->p_siglist = 0;






 while (p->p_sigcatch) {
  nc = ffs((long)p->p_sigcatch);
  mask = sigmask(nc);
  p->p_sigcatch &= ~mask;
  if (sigprop[nc] & SA_IGNORE) {
   if (nc != SIGCONT)
    p->p_sigignore |= mask;
   ut->uu_siglist &= ~mask;
  }
  ps->ps_sigact[nc] = SIG_DFL;
 }

 atomic_store_explicit(&ps->ps_sigreturn_validation,
   PS_SIGRETURN_VALIDATION_DEFAULT, memory_order_relaxed);

 read_random(&ps->ps_sigreturn_token, sizeof(ps->ps_sigreturn_token));






 ut->uu_sigstk.ss_flags = SA_DISABLE;
 ut->uu_sigstk.ss_size = 0;
 ut->uu_sigstk.ss_sp = USER_ADDR_NULL;
 ut->uu_flag &= ~UT_ALTSTACK;

 ps->ps_sigonstack = 0;
}
