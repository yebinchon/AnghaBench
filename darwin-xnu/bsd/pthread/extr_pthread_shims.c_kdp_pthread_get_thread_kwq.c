
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int thread_t ;
struct TYPE_2__ {void* (* pthread_get_thread_kwq ) (int ) ;} ;


 TYPE_1__* pthread_functions ;
 void* stub1 (int ) ;

void *
kdp_pthread_get_thread_kwq(thread_t thread)
{
 if (pthread_functions->pthread_get_thread_kwq)
  return pthread_functions->pthread_get_thread_kwq(thread);

 return ((void*)0);
}
