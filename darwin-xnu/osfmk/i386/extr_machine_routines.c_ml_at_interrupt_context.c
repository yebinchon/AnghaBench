
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 scalar_t__ get_interrupt_level () ;

boolean_t ml_at_interrupt_context(void)
{
 return get_interrupt_level() != 0;
}
