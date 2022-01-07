
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ thread_t ;


 scalar_t__ THREAD_NULL ;
 int thread_reference_internal (scalar_t__) ;

void
thread_reference(
 thread_t thread)
{
 if (thread != THREAD_NULL)
  thread_reference_internal(thread);
}
