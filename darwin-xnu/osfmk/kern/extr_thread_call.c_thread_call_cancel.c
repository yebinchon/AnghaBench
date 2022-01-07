
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_call_t ;
typedef int spl_t ;
typedef int boolean_t ;


 int disable_ints_and_lock () ;
 int enable_ints_and_unlock (int ) ;
 int thread_call_cancel_locked (int ) ;

boolean_t
thread_call_cancel(thread_call_t call)
{
 spl_t s = disable_ints_and_lock();

 boolean_t result = thread_call_cancel_locked(call);

 enable_ints_and_unlock(s);

 return result;
}
