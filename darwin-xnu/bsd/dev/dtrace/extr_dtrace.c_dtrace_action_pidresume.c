
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* uthread_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ t_dtrace_resumepid; } ;


 int CPU_DTRACE_ILLOP ;
 int DTRACE_CPUFLAG_SET (int ) ;
 int act_set_astbsd (int ) ;
 int current_thread () ;
 scalar_t__ dtrace_destructive_disallow ;
 int get_bsdthread_info (int ) ;
 int kauth_cred_get () ;
 scalar_t__ kauth_cred_issuser (int ) ;

__attribute__((used)) static void
dtrace_action_pidresume(uint64_t pid)
{
 if (dtrace_destructive_disallow)
  return;

 if (kauth_cred_issuser(kauth_cred_get()) == 0) {
  DTRACE_CPUFLAG_SET(CPU_DTRACE_ILLOP);
  return;
 }
        uthread_t uthread = (uthread_t)get_bsdthread_info(current_thread());
 if (pid != 0 && uthread && uthread->t_dtrace_resumepid == 0) {
  uthread->t_dtrace_resumepid = pid;
  act_set_astbsd(current_thread());
 }
}
