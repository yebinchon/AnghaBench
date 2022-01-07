
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* uthread_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ t_dtrace_sig; } ;


 int CPU_DTRACE_ILLOP ;
 int DTRACE_CPUFLAG_SET (int ) ;
 scalar_t__ NSIG ;
 int act_set_astbsd (int ) ;
 int current_thread () ;
 scalar_t__ dtrace_destructive_disallow ;
 int get_bsdthread_info (int ) ;

__attribute__((used)) static void
dtrace_action_raise(uint64_t sig)
{
 if (dtrace_destructive_disallow)
  return;

 if (sig >= NSIG) {
  DTRACE_CPUFLAG_SET(CPU_DTRACE_ILLOP);
  return;
 }






 uthread_t uthread = (uthread_t)get_bsdthread_info(current_thread());

 if (uthread && uthread->t_dtrace_sig == 0) {
  uthread->t_dtrace_sig = sig;
  act_set_astbsd(current_thread());
 }
}
