
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int timer_state_event (int ) ;

void
timer_state_event_kernel_to_user(void)
{
 timer_state_event(FALSE);
}
