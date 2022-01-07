
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIMER_DEADLINE_TRACKING_BIN_1_DEFAULT ;
 int TIMER_DEADLINE_TRACKING_BIN_2_DEFAULT ;
 int nanoseconds_to_absolutetime (int ,int *) ;
 int timer_deadline_tracking_bin_1 ;
 int timer_deadline_tracking_bin_2 ;

__attribute__((used)) static void
sched_timer_deadline_tracking_init(void) {
 nanoseconds_to_absolutetime(TIMER_DEADLINE_TRACKING_BIN_1_DEFAULT, &timer_deadline_tracking_bin_1);
 nanoseconds_to_absolutetime(TIMER_DEADLINE_TRACKING_BIN_2_DEFAULT, &timer_deadline_tracking_bin_2);
}
