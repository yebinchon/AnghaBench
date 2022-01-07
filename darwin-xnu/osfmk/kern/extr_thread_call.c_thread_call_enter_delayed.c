
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int * thread_call_t ;
typedef int boolean_t ;


 int assert (int ) ;
 int thread_call_enter_delayed_internal (int *,int *,int ,int ,int ,int ,int ) ;

boolean_t
thread_call_enter_delayed(
  thread_call_t call,
  uint64_t deadline)
{
 assert(call != ((void*)0));
 return thread_call_enter_delayed_internal(call, ((void*)0), 0, 0, deadline, 0, 0);
}
