
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * uthread_t ;


 int throttle_get_io_policy (int **) ;
 int throttle_get_thread_throttle_level_internal (int *,int) ;

__attribute__((used)) static int
throttle_get_thread_throttle_level(uthread_t ut)
{
 uthread_t *ut_p = (ut == ((void*)0)) ? &ut : ((void*)0);
 int io_tier = throttle_get_io_policy(ut_p);

 return throttle_get_thread_throttle_level_internal(ut, io_tier);
}
