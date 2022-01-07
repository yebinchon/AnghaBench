
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int NSEC_PER_SEC ;
 int TCP_RETRANSHZ ;
 int clock_interval_to_deadline (int ,int,int *) ;
 int coalesc_time ;
 int lro_deadline ;
 int lro_timer_set ;
 int tcp_lro_timer ;
 int thread_call_enter_delayed (int ,int ) ;

__attribute__((used)) static void
tcp_lro_sched_timer(uint64_t hint)
{
 if (lro_timer_set) {
  return;
 }

 lro_timer_set = 1;
 if (!hint) {

  clock_interval_to_deadline(coalesc_time,
   (NSEC_PER_SEC / TCP_RETRANSHZ), &lro_deadline);
 } else {
  clock_interval_to_deadline(hint, NSEC_PER_SEC / TCP_RETRANSHZ,
                        &lro_deadline);
 }
 thread_call_enter_delayed(tcp_lro_timer, lro_deadline);
}
