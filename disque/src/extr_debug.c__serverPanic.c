
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LL_WARNING ;
 int bugReportStart () ;
 int serverLog (int ,char*,...) ;

void _serverPanic(char *msg, char *file, int line) {
    bugReportStart();
    serverLog(LL_WARNING,"------------------------------------------------");
    serverLog(LL_WARNING,"!!! Software Failure. Press left mouse button to continue");
    serverLog(LL_WARNING,"Guru Meditation: %s #%s:%d",msg,file,line);



    serverLog(LL_WARNING,"------------------------------------------------");
    *((char*)-1) = 'x';
}
