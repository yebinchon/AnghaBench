
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;


 int NSEC_PER_USEC ;
 int assert (int) ;
 int clock_interval_to_absolutetime_interval (int ,int ,int*) ;
 int default_timeshare_computation ;
 int default_timeshare_constraint ;
 int max_unsafe_computation ;
 int max_unsafe_quanta ;
 int proto_quantum ;
 int proto_quantum_us ;
 int sched_safe_duration ;
 int thread_depress_time ;

__attribute__((used)) static void
sched_proto_timebase_init(void)
{
 uint64_t abstime;


 clock_interval_to_absolutetime_interval(
           proto_quantum_us, NSEC_PER_USEC, &abstime);
 assert((abstime >> 32) == 0 && (uint32_t)abstime != 0);
 proto_quantum = (uint32_t)abstime;

 thread_depress_time = 1 * proto_quantum;
 default_timeshare_computation = proto_quantum / 2;
 default_timeshare_constraint = proto_quantum;

 max_unsafe_computation = max_unsafe_quanta * proto_quantum;
 sched_safe_duration = 2 * max_unsafe_quanta * proto_quantum;

}
