
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CLIENT_THREAD_STATE_T ;


 int UNUSED (int *) ;
 int mutex ;
 int platform_mutex_acquire (int *) ;

void rpc_begin(CLIENT_THREAD_STATE_T *thread)
{
   UNUSED(thread);
   platform_mutex_acquire(&mutex);
}
