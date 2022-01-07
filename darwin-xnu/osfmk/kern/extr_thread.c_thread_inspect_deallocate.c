
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_t ;
typedef scalar_t__ thread_inspect_t ;


 void thread_deallocate (int ) ;

void
thread_inspect_deallocate(
 thread_inspect_t thread_inspect)
{
 return(thread_deallocate((thread_t)thread_inspect));
}
