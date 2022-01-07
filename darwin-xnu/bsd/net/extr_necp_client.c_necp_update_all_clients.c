
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int NSEC_PER_USEC ;
 int THREAD_CALL_DELAY_LEEWAY ;
 int clock_interval_to_absolutetime_interval (int ,int ,int *) ;
 int clock_interval_to_deadline (int ,int ,int *) ;
 int * necp_client_update_tcall ;
 int necp_timeout_leeway_microseconds ;
 int necp_timeout_microseconds ;
 int thread_call_enter_delayed_with_leeway (int *,int *,int ,int ,int ) ;

void
necp_update_all_clients(void)
{
 if (necp_client_update_tcall == ((void*)0)) {

  return;
 }

 uint64_t deadline = 0;
 uint64_t leeway = 0;
 clock_interval_to_deadline(necp_timeout_microseconds, NSEC_PER_USEC, &deadline);
 clock_interval_to_absolutetime_interval(necp_timeout_leeway_microseconds, NSEC_PER_USEC, &leeway);

 thread_call_enter_delayed_with_leeway(necp_client_update_tcall, ((void*)0),
            deadline, leeway, THREAD_CALL_DELAY_LEEWAY);
}
