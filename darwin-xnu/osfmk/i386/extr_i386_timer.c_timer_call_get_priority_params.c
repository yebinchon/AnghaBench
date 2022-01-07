
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timer_coalescing_priority_params_ns_t ;


 int tcoal_prio_params_init ;

timer_coalescing_priority_params_ns_t * timer_call_get_priority_params(void)
{
 return &tcoal_prio_params_init;
}
