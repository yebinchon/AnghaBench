
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG_STDOUT ;
 int DebugInit (char*,int ,int *) ;
 int MainLog ;

void LogStart(void) {
        MainLog = DebugInit("main", DEBUG_STDOUT, ((void*)0));

}
