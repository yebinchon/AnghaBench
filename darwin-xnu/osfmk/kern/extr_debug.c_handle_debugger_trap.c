
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ kern_return_t ;
typedef scalar_t__ debugger_op ;


 int CPUDEBUGGERCOUNT ;
 int * CPUDEBUGGERMSG ;
 scalar_t__ CPUDEBUGGEROP ;
 scalar_t__ CPUDEBUGGERRET ;
 int CPUDEBUGGERSYNC ;
 int * CPUPANICARGS ;
 int CPUPANICCALLER ;
 int * CPUPANICDATAPTR ;
 scalar_t__ CPUPANICOPTS ;
 int * CPUPANICSTR ;
 scalar_t__ DBOP_BREAKPOINT ;
 scalar_t__ DBOP_DEBUGGER ;
 scalar_t__ DBOP_NONE ;
 scalar_t__ DBOP_PANIC ;
 scalar_t__ DBOP_RESET_PGO_COUNTERS ;
 scalar_t__ DBOP_STACKSHOT ;
 int DEBUGGER_TRAP_TIMESTAMP (int) ;
 scalar_t__ DebuggerHaltOtherCores (int ) ;
 int DebuggerLock () ;
 int DebuggerResumeOtherCores () ;
 int DebuggerUnlock () ;
 int FALSE ;
 int KDP_EVENT_ENTER ;
 int KDP_EVENT_EXIT ;
 scalar_t__ KERN_SUCCESS ;
 int SERIALMODE_OUTPUT ;
 int current_thread () ;
 int debugger_collect_diagnostics (unsigned int,unsigned int,unsigned int,void*) ;
 scalar_t__ debugger_current_op ;
 int * debugger_message ;
 int * debugger_panic_args ;
 int debugger_panic_caller ;
 int * debugger_panic_data ;
 scalar_t__ debugger_panic_options ;
 int * debugger_panic_str ;
 int debugger_safe_to_return ;
 scalar_t__ do_pgo_reset_counters () ;
 scalar_t__ do_stackshot () ;
 int kdp_callouts (int ) ;
 int kdp_raise_exception (unsigned int,unsigned int,unsigned int,void*) ;
 int kernel_debugger_entry_count ;
 int ml_spin_debug_reset (int ) ;
 unsigned int not_in_kdp ;
 int serialmode ;

void
handle_debugger_trap(unsigned int exception, unsigned int code, unsigned int subcode, void *state)
{
 unsigned int initial_not_in_kdp = not_in_kdp;
 kern_return_t ret;
 debugger_op db_prev_op = debugger_current_op;

 DEBUGGER_TRAP_TIMESTAMP(0);

 DebuggerLock();
 ret = DebuggerHaltOtherCores(CPUDEBUGGERSYNC);

 DEBUGGER_TRAP_TIMESTAMP(1);






 if (ret != KERN_SUCCESS) {
  CPUDEBUGGERRET = ret;
  DebuggerUnlock();
  return;
 }


 kernel_debugger_entry_count = CPUDEBUGGERCOUNT;






 if (CPUDEBUGGEROP == DBOP_NONE) {

  debugger_current_op = DBOP_BREAKPOINT;
 } else {

  if (debugger_current_op == DBOP_PANIC ||
   debugger_current_op == DBOP_DEBUGGER) {
   debugger_safe_to_return = FALSE;
  }

  debugger_current_op = CPUDEBUGGEROP;


  if (debugger_panic_str == ((void*)0)) {
   debugger_panic_str = CPUPANICSTR;
   debugger_panic_args = CPUPANICARGS;
   debugger_panic_data = CPUPANICDATAPTR;
   debugger_message = CPUDEBUGGERMSG;
   debugger_panic_caller = CPUPANICCALLER;
  }

  debugger_panic_options = CPUPANICOPTS;
 }





 CPUDEBUGGEROP = DBOP_NONE;

 DEBUGGER_TRAP_TIMESTAMP(2);

 kdp_callouts(KDP_EVENT_ENTER);
 not_in_kdp = 0;

 DEBUGGER_TRAP_TIMESTAMP(3);

 if (debugger_current_op == DBOP_BREAKPOINT) {
  kdp_raise_exception(exception, code, subcode, state);
 } else if (debugger_current_op == DBOP_STACKSHOT) {
  CPUDEBUGGERRET = do_stackshot();




 } else {
  debugger_collect_diagnostics(exception, code, subcode, state);
 }

 DEBUGGER_TRAP_TIMESTAMP(4);

 not_in_kdp = initial_not_in_kdp;
 kdp_callouts(KDP_EVENT_EXIT);

 DEBUGGER_TRAP_TIMESTAMP(5);

 if (debugger_current_op != DBOP_BREAKPOINT) {
  debugger_panic_str = ((void*)0);
  debugger_panic_args = ((void*)0);
  debugger_panic_data = ((void*)0);
  debugger_panic_options = 0;
  debugger_message = ((void*)0);
 }


 debugger_current_op = db_prev_op;

 DEBUGGER_TRAP_TIMESTAMP(6);

 DebuggerResumeOtherCores();

 DEBUGGER_TRAP_TIMESTAMP(7);

 DebuggerUnlock();

 DEBUGGER_TRAP_TIMESTAMP(8);

 return;
}
