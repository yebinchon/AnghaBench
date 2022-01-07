
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_call_t ;
typedef int boolean_t ;


 int thread_call_enter1 (int ,int ) ;

boolean_t
thread_call_enter(
  thread_call_t call)
{
 return thread_call_enter1(call, 0);
}
