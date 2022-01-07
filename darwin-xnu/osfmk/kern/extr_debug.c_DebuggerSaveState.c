
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int uint64_t ;
typedef int debugger_op ;
typedef int boolean_t ;


 int CPUDEBUGGERCOUNT ;
 char const* CPUDEBUGGERMSG ;
 int CPUDEBUGGEROP ;
 int CPUDEBUGGERRET ;
 int CPUDEBUGGERSYNC ;
 int * CPUPANICARGS ;
 unsigned long CPUPANICCALLER ;
 void* CPUPANICDATAPTR ;
 int CPUPANICOPTS ;
 char const* CPUPANICSTR ;
 int KERN_SUCCESS ;
 int PE_kputc ;
 int _doprnt (char const*,int *,int ,int ) ;
 int kprintf (char*) ;

__attribute__((used)) static void
DebuggerSaveState(debugger_op db_op, const char *db_message, const char *db_panic_str,
  va_list *db_panic_args, uint64_t db_panic_options, void *db_panic_data_ptr,
  boolean_t db_proceed_on_sync_failure, unsigned long db_panic_caller)
{
 CPUDEBUGGEROP = db_op;


 if (CPUDEBUGGERCOUNT == 1 || CPUPANICSTR == ((void*)0)) {
  CPUDEBUGGERMSG = db_message;
  CPUPANICSTR = db_panic_str;
  CPUPANICARGS = db_panic_args;
  CPUPANICDATAPTR = db_panic_data_ptr;
  CPUPANICCALLER = db_panic_caller;
 } else if (CPUDEBUGGERCOUNT > 1 && db_panic_str != ((void*)0)) {
  kprintf("Nested panic detected:");
  if (db_panic_str != ((void*)0))
   _doprnt(db_panic_str, db_panic_args, PE_kputc, 0);
 }

 CPUDEBUGGERSYNC = db_proceed_on_sync_failure;
 CPUDEBUGGERRET = KERN_SUCCESS;


 CPUPANICOPTS = db_panic_options;

 return;
}
