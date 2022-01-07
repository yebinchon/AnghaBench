
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_call_t ;
typedef int thread_call_priority_t ;
typedef int thread_call_param_t ;
typedef int thread_call_func_t ;


 int thread_call_allocate_with_options (int ,int ,int ,int ) ;

thread_call_t
thread_call_allocate_with_priority(
  thread_call_func_t func,
  thread_call_param_t param0,
  thread_call_priority_t pri)
{
 return thread_call_allocate_with_options(func, param0, pri, 0);
}
