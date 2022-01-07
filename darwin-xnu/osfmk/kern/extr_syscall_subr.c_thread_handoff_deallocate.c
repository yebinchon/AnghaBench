
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_result_t ;
typedef int thread_t ;


 int thread_handoff_internal (int ,int *,int *) ;

wait_result_t
thread_handoff_deallocate(thread_t thread)
{
 return thread_handoff_internal(thread, ((void*)0), ((void*)0));
}
