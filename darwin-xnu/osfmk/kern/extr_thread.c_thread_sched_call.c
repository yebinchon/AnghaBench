
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int sched_call_t ;
struct TYPE_3__ {int state; int sched_call; } ;


 int TH_WAIT_REPORT ;
 int assert (int) ;

void
thread_sched_call(
 thread_t thread,
 sched_call_t call)
{
 assert((thread->state & TH_WAIT_REPORT) == 0);
 thread->sched_call = call;
}
