
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int NSEC_PER_SEC ;
 int THREAD_CALL_DELAY_LEEWAY ;
 int clock_interval_to_absolutetime_interval (int ,int ,int *) ;
 int clock_interval_to_deadline (int ,int ,int *) ;
 int mcache_reap_interval ;
 int mcache_reap_interval_leeway ;
 int mcache_reap_tcall ;
 int thread_call_enter_delayed_with_leeway (int ,void*,int ,int ,int ) ;

__attribute__((used)) static void
mcache_reap_done(void *flag)
{
 uint64_t deadline, leeway;

 clock_interval_to_deadline(mcache_reap_interval, NSEC_PER_SEC,
     &deadline);
 clock_interval_to_absolutetime_interval(mcache_reap_interval_leeway,
     NSEC_PER_SEC, &leeway);
 thread_call_enter_delayed_with_leeway(mcache_reap_tcall, flag,
     deadline, leeway, THREAD_CALL_DELAY_LEEWAY);
}
