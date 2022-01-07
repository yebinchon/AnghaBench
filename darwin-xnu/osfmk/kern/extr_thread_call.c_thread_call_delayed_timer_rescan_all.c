
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TCF_ABSOLUTE ;
 int TCF_CONTINUOUS ;
 int THREAD_CALL_INDEX_MAX ;
 int thread_call_delayed_timer_rescan (int *,int ) ;
 int * thread_call_groups ;

void
thread_call_delayed_timer_rescan_all(void) {
 for (int i = 0; i < THREAD_CALL_INDEX_MAX; i++) {
  thread_call_delayed_timer_rescan(&thread_call_groups[i], TCF_ABSOLUTE);
  thread_call_delayed_timer_rescan(&thread_call_groups[i], TCF_CONTINUOUS);
 }
}
