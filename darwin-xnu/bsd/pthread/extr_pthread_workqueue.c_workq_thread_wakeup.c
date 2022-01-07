
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uthread {int uu_workq_flags; int uu_thread; } ;


 int UT_WORKQ_IDLE_CLEANUP ;
 int thread_wakeup_thread (int ,int ) ;
 int workq_parked_wait_event (struct uthread*) ;

__attribute__((used)) static inline void
workq_thread_wakeup(struct uthread *uth)
{
 if ((uth->uu_workq_flags & UT_WORKQ_IDLE_CLEANUP) == 0) {
  thread_wakeup_thread(workq_parked_wait_event(uth), uth->uu_thread);
 }
}
