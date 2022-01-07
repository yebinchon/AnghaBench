
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int event_t ;


 int THREAD_INTERRUPTIBLE ;
 int UDP_FLOW_GC_RUN_INTERVAL_NSEC ;
 int assert_wait (int ,int ) ;
 int assert_wait_deadline (int *,int ,int ) ;
 int cfil_sock_udp_attached_count ;
 int clock_absolutetime_interval_to_deadline (int ,int *) ;
 int nanoseconds_to_absolutetime (int ,int *) ;

__attribute__((used)) static void
cfil_udp_gc_thread_sleep(bool forever)
{
 if (forever) {
  (void) assert_wait((event_t) &cfil_sock_udp_attached_count,
         THREAD_INTERRUPTIBLE);
 } else {
  uint64_t deadline = 0;
  nanoseconds_to_absolutetime(UDP_FLOW_GC_RUN_INTERVAL_NSEC, &deadline);
  clock_absolutetime_interval_to_deadline(deadline, &deadline);

  (void) assert_wait_deadline(&cfil_sock_udp_attached_count,
         THREAD_INTERRUPTIBLE, deadline);
 }
}
