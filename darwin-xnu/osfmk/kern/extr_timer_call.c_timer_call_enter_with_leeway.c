
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int timer_call_t ;
typedef int timer_call_param_t ;
typedef int boolean_t ;


 int timer_call_enter_internal (int ,int ,int ,int ,int ,int ) ;

boolean_t
timer_call_enter_with_leeway(
 timer_call_t call,
 timer_call_param_t param1,
 uint64_t deadline,
 uint64_t leeway,
 uint32_t flags,
 boolean_t ratelimited)
{
 return timer_call_enter_internal(call, param1, deadline, leeway, flags, ratelimited);
}
