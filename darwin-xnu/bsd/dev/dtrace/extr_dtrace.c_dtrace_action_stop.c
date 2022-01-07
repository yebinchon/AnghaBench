
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* uthread_t ;
struct TYPE_2__ {int t_dtrace_stop; } ;


 int act_set_astbsd (int ) ;
 int current_thread () ;
 scalar_t__ dtrace_destructive_disallow ;
 int get_bsdthread_info (int ) ;

__attribute__((used)) static void
dtrace_action_stop(void)
{
 if (dtrace_destructive_disallow)
  return;

        uthread_t uthread = (uthread_t)get_bsdthread_info(current_thread());
 if (uthread) {




  uthread->t_dtrace_stop = 1;
  act_set_astbsd(current_thread());
 }
}
