
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int boolean_t ;
struct TYPE_3__ {int state; scalar_t__ block_hint; } ;


 int TH_WAIT ;
 scalar_t__ kThreadWaitParkedWorkQueue ;

boolean_t
stackshot_thread_is_idle_worker_unsafe(thread_t thread)
{




 return (thread->state & TH_WAIT) &&
  (thread->block_hint == kThreadWaitParkedWorkQueue);
}
