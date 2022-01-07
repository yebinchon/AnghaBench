
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int timer_state_event (int ) ;

void
timer_state_event_user_to_kernel(void)
{
 timer_state_event(TRUE);
}
