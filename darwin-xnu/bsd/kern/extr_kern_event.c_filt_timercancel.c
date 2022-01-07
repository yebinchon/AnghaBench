
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_call_t ;
struct knote {scalar_t__ kn_hook; int kn_hookid; } ;


 scalar_t__ TIMER_ARMED ;
 int TIMER_IDLE ;
 scalar_t__ os_atomic_xchg (int *,int ,int ) ;
 int relaxed ;
 int thread_call_cancel_wait (int ) ;

__attribute__((used)) static void
filt_timercancel(struct knote *kn)
{
 if (os_atomic_xchg(&kn->kn_hookid, TIMER_IDLE, relaxed) == TIMER_ARMED) {

  thread_call_cancel_wait((thread_call_t)kn->kn_hook);
 }
}
