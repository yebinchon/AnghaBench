
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetCurrentThreadId () ;
 int pthread_self () ;

uintptr_t sthread_get_current_thread_id(void)
{



   return (uintptr_t)pthread_self();

}
