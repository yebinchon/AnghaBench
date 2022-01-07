
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int event_t ;
struct TYPE_2__ {int memorystatus_wakeup; } ;


 int active_jetsam_threads ;
 int atomic_load (int *) ;
 TYPE_1__* jetsam_threads ;
 int thread_wakeup (int ) ;

__attribute__((used)) static void
memorystatus_thread_wake(void)
{
 int thr_id = 0;
 int active_thr = atomic_load(&active_jetsam_threads);


 for (thr_id = 0; thr_id < active_thr; thr_id++) {
  thread_wakeup((event_t)&jetsam_threads[thr_id].memorystatus_wakeup);
 }
}
