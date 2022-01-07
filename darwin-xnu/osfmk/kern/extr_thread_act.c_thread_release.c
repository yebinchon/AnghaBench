
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct TYPE_6__ {scalar_t__ suspend_count; scalar_t__ suspend_parked; int started; } ;


 scalar_t__ FALSE ;
 int assertf (int,char*,TYPE_1__*) ;
 int thread_start (TYPE_1__*) ;
 int thread_wakeup_thread (scalar_t__*,TYPE_1__*) ;

void
thread_release(thread_t thread)
{
 assertf(thread->suspend_count > 0, "thread %p over-resumed", thread);


 if (thread->suspend_count == 0)
  return;

 if (--thread->suspend_count == 0) {
  if (!thread->started) {
   thread_start(thread);
  } else if (thread->suspend_parked) {
   thread->suspend_parked = FALSE;
   thread_wakeup_thread(&thread->suspend_count, thread);
  }
 }
}
