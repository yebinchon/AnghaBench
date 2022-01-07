
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_return_t ;


 int KERN_SUCCESS ;
 int test_once_thread_call () ;
 int test_signal_thread_call () ;

kern_return_t
test_thread_call(void)
{
 test_once_thread_call();
 test_signal_thread_call();

 return KERN_SUCCESS;
}
