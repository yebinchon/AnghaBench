
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef int sched_mode_t ;
struct TYPE_4__ {scalar_t__ runq; int sched_mode; } ;


 scalar_t__ PROCESSOR_NULL ;



 int assert (int) ;
 int panic (char*,int) ;
 int sched_update_thread_bucket (TYPE_1__*) ;

void
sched_set_thread_mode(thread_t thread, sched_mode_t new_mode)
{
 assert(thread->runq == PROCESSOR_NULL);

 switch (new_mode) {
 case 130:
 case 129:
 case 128:
  break;

 default:
  panic("unexpected mode: %d", new_mode);
  break;
 }

 thread->sched_mode = new_mode;

 sched_update_thread_bucket(thread);
}
