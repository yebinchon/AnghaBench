
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int uint64_t ;
typedef int kern_return_t ;
typedef int debugger_op ;
typedef scalar_t__ boolean_t ;


 int CPUDEBUGGERRET ;
 int DBOP_NONE ;
 int DebuggerSaveState (int ,char const*,char const*,int *,int ,void*,scalar_t__,unsigned long) ;
 scalar_t__ FALSE ;
 int TRAP_DEBUGGER ;
 int assert (int) ;
 scalar_t__ ml_get_interrupts_enabled () ;

kern_return_t
DebuggerTrapWithState(debugger_op db_op, const char *db_message, const char *db_panic_str,
  va_list *db_panic_args, uint64_t db_panic_options, void *db_panic_data_ptr,
  boolean_t db_proceed_on_sync_failure, unsigned long db_panic_caller)
{
 kern_return_t ret;

 assert(ml_get_interrupts_enabled() == FALSE);
 DebuggerSaveState(db_op, db_message, db_panic_str, db_panic_args,
    db_panic_options, db_panic_data_ptr,
    db_proceed_on_sync_failure, db_panic_caller);

 TRAP_DEBUGGER;

 ret = CPUDEBUGGERRET;

 DebuggerSaveState(DBOP_NONE, ((void*)0), ((void*)0), ((void*)0), 0, ((void*)0), FALSE, 0);

 return ret;
}
