
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int robj ;


 int LL_WARNING ;
 int bugReportStart () ;
 int serverLog (int ,char*) ;
 int serverLogObjectDebugInfo (int *) ;

void _serverAssertPrintObject(robj *o) {
    bugReportStart();
    serverLog(LL_WARNING,"=== ASSERTION FAILED OBJECT CONTEXT ===");
    serverLogObjectDebugInfo(o);
}
