
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ KERN_FAILURE ;
 scalar_t__ KTRACE_STATE_BG ;
 scalar_t__ KTRACE_STATE_OFF ;
 int assert (int) ;
 scalar_t__ ktrace_background_available_notify_user () ;
 int ktrace_release_ownership () ;
 scalar_t__ ktrace_state ;
 int should_notify_on_init ;

__attribute__((used)) static void
ktrace_promote_background(void)
{
 assert(ktrace_state != KTRACE_STATE_BG);






 if (ktrace_background_available_notify_user() == KERN_FAILURE) {
  should_notify_on_init = 1;
 } else {
  should_notify_on_init = 0;
 }

 ktrace_release_ownership();
 ktrace_state = KTRACE_STATE_OFF;
}
