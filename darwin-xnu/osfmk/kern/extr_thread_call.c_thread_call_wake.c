
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* thread_call_group_t ;
struct TYPE_5__ {scalar_t__ active_count; scalar_t__ idle_count; int flags; int dealloc_timer; int idle_waitq; } ;


 scalar_t__ KERN_SUCCESS ;
 int NO_EVENT64 ;
 int TCG_DEALLOC_ACTIVE ;
 int THREAD_AWAKENED ;
 scalar_t__ TRUE ;
 int WAITQ_ALL_PRIORITIES ;
 int daemon_waitq ;
 scalar_t__ group_isparallel (TYPE_1__*) ;
 scalar_t__ thread_call_daemon_awake ;
 scalar_t__ thread_call_group_should_add_thread (TYPE_1__*) ;
 scalar_t__ timer_call_cancel (int *) ;
 scalar_t__ waitq_wakeup64_one (int *,int ,int ,int ) ;

__attribute__((used)) static __inline__ void
thread_call_wake(
 thread_call_group_t group)
{




 if (group_isparallel(group) || group->active_count == 0) {
  if (waitq_wakeup64_one(&group->idle_waitq, NO_EVENT64,
           THREAD_AWAKENED, WAITQ_ALL_PRIORITIES) == KERN_SUCCESS) {
   group->idle_count--; group->active_count++;

   if (group->idle_count == 0 && (group->flags & TCG_DEALLOC_ACTIVE) == TCG_DEALLOC_ACTIVE) {
    if (timer_call_cancel(&group->dealloc_timer) == TRUE) {
     group->flags &= ~TCG_DEALLOC_ACTIVE;
    }
   }
  } else {
   if (!thread_call_daemon_awake && thread_call_group_should_add_thread(group)) {
    thread_call_daemon_awake = TRUE;
    waitq_wakeup64_one(&daemon_waitq, NO_EVENT64,
         THREAD_AWAKENED, WAITQ_ALL_PRIORITIES);
   }
  }
 }
}
