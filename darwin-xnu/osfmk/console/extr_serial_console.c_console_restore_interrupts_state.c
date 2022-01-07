
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ boolean_t ;


 scalar_t__ TRUE ;
 int ml_set_interrupts_enabled (scalar_t__) ;
 int ml_spin_debug_clear_self () ;

__attribute__((used)) static void
console_restore_interrupts_state(boolean_t state)
{
 ml_set_interrupts_enabled(state);
}
