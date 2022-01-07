
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int thread_call_t ;
typedef int thread_call_param_t ;
typedef int boolean_t ;


 int FALSE ;
 int NSEC_PER_MSEC ;
 int NSEC_PER_SEC ;
 scalar_t__ TEST_ARG1 ;
 scalar_t__ TEST_ARG2 ;
 int THREAD_CALL_OPTIONS_ONCE ;
 int THREAD_CALL_OPTIONS_SIGNAL ;
 int THREAD_CALL_PRIORITY_HIGH ;
 int TRUE ;
 int T_ASSERT_EQ_INT (int ,int,char*) ;
 int clock_interval_to_deadline (int,int ,int *) ;
 int delay_for_interval (int,int ) ;
 int signal_callback_counter ;
 int test_signal_callback ;
 int thread_call_allocate_with_options (int *,int ,int ,int) ;
 int thread_call_cancel (int ) ;
 int thread_call_enter1_delayed (int ,int ,int ) ;
 int thread_call_free (int ) ;

__attribute__((used)) static void
test_signal_thread_call(void)
{
 thread_call_t call;
 call = thread_call_allocate_with_options(&test_signal_callback,
                                          (thread_call_param_t)TEST_ARG1,
                                          THREAD_CALL_PRIORITY_HIGH,
                                          THREAD_CALL_OPTIONS_ONCE|THREAD_CALL_OPTIONS_SIGNAL);

 thread_call_param_t arg2_param = (thread_call_param_t)TEST_ARG2;

 uint64_t deadline;

 boolean_t canceled, pending, freed;

 clock_interval_to_deadline(10, NSEC_PER_SEC, &deadline);
 pending = thread_call_enter1_delayed(call, arg2_param, deadline);
 T_ASSERT_EQ_INT(pending, FALSE, "call should not be pending");

 canceled = thread_call_cancel(call);
 T_ASSERT_EQ_INT(canceled, TRUE, "thread_call_cancel should succeed");

 clock_interval_to_deadline(10, NSEC_PER_MSEC, &deadline);
 pending = thread_call_enter1_delayed(call, arg2_param, deadline);
 T_ASSERT_EQ_INT(pending, FALSE, "call should not be pending");


 delay_for_interval(50, NSEC_PER_MSEC);

 T_ASSERT_EQ_INT(signal_callback_counter, 1, "callback fired");

 canceled = thread_call_cancel(call);
 T_ASSERT_EQ_INT(canceled, FALSE, "thread_call_cancel should not succeed");

 freed = thread_call_free(call);
 T_ASSERT_EQ_INT(freed, TRUE, "thread_call_free should succeed");
}
