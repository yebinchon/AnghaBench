
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * thread_call_group_t ;
typedef int spl_t ;


 int TCF_CONTINUOUS ;
 int THREAD_CALL_INDEX_MAX ;
 int _arm_delayed_call_timer (int *,int *,int ) ;
 int disable_ints_and_lock () ;
 int enable_ints_and_unlock (int ) ;
 int * thread_call_groups ;

void
adjust_cont_time_thread_calls(void)
{
 spl_t s = disable_ints_and_lock();

 for (int i = 0; i < THREAD_CALL_INDEX_MAX; i++) {
  thread_call_group_t group = &thread_call_groups[i];



  _arm_delayed_call_timer(((void*)0), group, TCF_CONTINUOUS);
 }

 enable_ints_and_unlock(s);
}
