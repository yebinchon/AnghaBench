
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int thread_continue_t ;
typedef TYPE_1__* processor_t ;
typedef int event_t ;
struct TYPE_5__ {struct TYPE_5__* processor_list; } ;


 TYPE_1__* PROCESSOR_NULL ;
 int THREAD_UNINT ;
 int assert_wait_deadline (int ,int ,scalar_t__) ;
 int clock_deadline_for_periodic_event (int ,scalar_t__,scalar_t__*) ;
 int compute_averages (int) ;
 scalar_t__ mach_absolute_time () ;
 TYPE_1__* master_processor ;
 TYPE_1__* proto_processor ;
 int sched_one_second_interval ;
 int sched_proto_tick ;
 scalar_t__ sched_proto_tick_deadline ;
 int thread_block (int ) ;

__attribute__((used)) static void
sched_proto_maintenance_continuation(void)
{
 uint64_t abstime = mach_absolute_time();

 sched_proto_tick++;


 if ((sched_proto_tick & 0x7) == 0) {
  processor_t new_processor;

  new_processor = proto_processor->processor_list;
  if (new_processor == PROCESSOR_NULL)
   proto_processor = master_processor;
  else
   proto_processor = new_processor;
 }





 compute_averages(1);

 if (sched_proto_tick_deadline == 0)
  sched_proto_tick_deadline = abstime;

 clock_deadline_for_periodic_event(sched_one_second_interval, abstime,
      &sched_proto_tick_deadline);

 assert_wait_deadline((event_t)sched_proto_maintenance_continuation, THREAD_UNINT, sched_proto_tick_deadline);
 thread_block((thread_continue_t)sched_proto_maintenance_continuation);

}
