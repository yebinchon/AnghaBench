
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 scalar_t__ kernel_debugger_entry_count ;
 scalar_t__ not_in_kdp ;

boolean_t
debug_mode_active(void)
{
 return ((0 != kernel_debugger_entry_count != 0) || (0 == not_in_kdp));
}
