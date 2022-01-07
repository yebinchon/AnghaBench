
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int thread_call_t ;
typedef int thread_call_param_t ;
typedef int kern_return_t ;
typedef int boolean_t ;


 int FALSE ;
 int LCK_ATTR_NULL ;
 int LCK_GRP_ATTR_NULL ;
 int LCK_SLEEP_DEFAULT ;
 int NSEC_PER_MSEC ;
 int NSEC_PER_SEC ;
 scalar_t__ TEST_ARG1 ;
 scalar_t__ TEST_ARG2 ;
 int THREAD_AWAKENED ;
 int THREAD_CALL_OPTIONS_ONCE ;
 int THREAD_CALL_PRIORITY_HIGH ;
 int THREAD_UNINT ;
 int TRUE ;
 int T_ASSERT_EQ_INT (int ,int,char*) ;
 int clock_interval_to_deadline (int,int ,int *) ;
 int delay_for_interval (int,int ) ;
 int lck_grp_init (int *,char*,int ) ;
 int lck_mtx_init (int *,int *,int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_sleep_deadline (int *,int ,int *,int ,int ) ;
 int lck_mtx_unlock (int *) ;
 int once_callback_counter ;
 int test_lock ;
 int test_lock_grp ;
 int test_once_callback ;
 int thread_call_allocate_with_options (int *,int ,int ,int ) ;
 int thread_call_cancel (int ) ;
 int thread_call_cancel_wait (int ) ;
 int thread_call_enter1 (int ,int ) ;
 int thread_call_free (int ) ;
 int thread_wakeup (int *) ;
 int wait_for_callback ;
 int wait_for_main ;

__attribute__((used)) static void
test_once_thread_call(void)
{
 lck_grp_init(&test_lock_grp, "test_thread_call", LCK_GRP_ATTR_NULL);
 lck_mtx_init(&test_lock, &test_lock_grp, LCK_ATTR_NULL);

 thread_call_t call;
 call = thread_call_allocate_with_options(&test_once_callback,
                                          (thread_call_param_t)TEST_ARG1,
                                          THREAD_CALL_PRIORITY_HIGH,
                                          THREAD_CALL_OPTIONS_ONCE);

 thread_call_param_t arg2_param = (thread_call_param_t)TEST_ARG2;

 lck_mtx_lock(&test_lock);

 thread_call_enter1(call, arg2_param);

 uint64_t deadline;
 clock_interval_to_deadline(10, NSEC_PER_SEC, &deadline);

 kern_return_t kr;

 kr = lck_mtx_sleep_deadline(&test_lock, LCK_SLEEP_DEFAULT, &wait_for_callback, THREAD_UNINT, deadline);
 T_ASSERT_EQ_INT(kr, THREAD_AWAKENED, "main function woken by callback");

 lck_mtx_unlock(&test_lock);



 T_ASSERT_EQ_INT(once_callback_counter, 1, "callback fired");

 boolean_t canceled, pending, freed;

 canceled = thread_call_cancel(call);
 T_ASSERT_EQ_INT(canceled, FALSE, "thread_call_cancel should not succeed");

 pending = thread_call_enter1(call, arg2_param);
 T_ASSERT_EQ_INT(pending, FALSE, "call should not be pending");


 delay_for_interval(10, NSEC_PER_MSEC);

 canceled = thread_call_cancel(call);
 T_ASSERT_EQ_INT(canceled, TRUE, "thread_call_cancel should succeed");

 pending = thread_call_enter1(call, arg2_param);
 T_ASSERT_EQ_INT(pending, FALSE, "call should not be pending");

 freed = thread_call_free(call);
 T_ASSERT_EQ_INT(freed, FALSE, "thread_call_free should not succeed");

 pending = thread_call_enter1(call, arg2_param);
 T_ASSERT_EQ_INT(pending, TRUE, "call should be pending");

 thread_wakeup(&wait_for_main);

 canceled = thread_call_cancel_wait(call);
 T_ASSERT_EQ_INT(canceled, TRUE, "thread_call_cancel_wait should succeed");

 canceled = thread_call_cancel(call);
 T_ASSERT_EQ_INT(canceled, FALSE, "thread_call_cancel should not succeed");

 freed = thread_call_free(call);
 T_ASSERT_EQ_INT(freed, TRUE, "thread_call_free should succeed");
}
