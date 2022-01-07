
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int boolean_t ;


 scalar_t__ LastDebuggerEntryAllowance ;
 scalar_t__ debugger_entry_time ;
 scalar_t__ debugger_exit_time ;
 scalar_t__ mach_absolute_time () ;

boolean_t
mp_recent_debugger_activity(void) {
 uint64_t abstime = mach_absolute_time();
 return (((abstime - debugger_entry_time) < LastDebuggerEntryAllowance) ||
     ((abstime - debugger_exit_time) < LastDebuggerEntryAllowance));
}
