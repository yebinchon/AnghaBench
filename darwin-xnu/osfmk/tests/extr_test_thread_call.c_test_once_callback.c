
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ thread_call_param_t ;
typedef int test_param ;
typedef int kern_return_t ;


 int LCK_SLEEP_DEFAULT ;
 int NSEC_PER_SEC ;
 int TEST_ARG1 ;
 int TEST_ARG2 ;
 int THREAD_AWAKENED ;
 int THREAD_UNINT ;
 int T_ASSERT_EQ_INT (int ,int,char*) ;
 int clock_interval_to_deadline (int,int ,int *) ;
 int delay_for_interval (int,int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_sleep_deadline (int *,int ,int *,int ,int ) ;
 int lck_mtx_unlock (int *) ;
 int once_callback_counter ;
 int test_lock ;
 int thread_wakeup (int *) ;
 int wait_for_callback ;
 int wait_for_main ;

__attribute__((used)) static void
test_once_callback(thread_call_param_t param0,
                   thread_call_param_t param1)
{
 T_ASSERT_EQ_INT((test_param)param0, TEST_ARG1, "param0 is correct");
 T_ASSERT_EQ_INT((test_param)param1, TEST_ARG2, "param1 is correct");

 once_callback_counter++;

 T_ASSERT_EQ_INT(once_callback_counter, 1, "only one callback");

 lck_mtx_lock(&test_lock);

 thread_wakeup(&wait_for_callback);

 uint64_t deadline;
 clock_interval_to_deadline(10, NSEC_PER_SEC, &deadline);

 kern_return_t kr;

 kr = lck_mtx_sleep_deadline(&test_lock, LCK_SLEEP_DEFAULT, &wait_for_main, THREAD_UNINT, deadline);
 T_ASSERT_EQ_INT(kr, THREAD_AWAKENED, " callback woken by main function");

 lck_mtx_unlock(&test_lock);


 delay_for_interval(1, NSEC_PER_SEC);
}
