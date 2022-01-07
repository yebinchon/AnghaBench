
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DebugOutType ;


 int DebugChangeOutput (int ,int ,char*) ;
 int MainLog ;

void LogChangeOutput(DebugOutType t, char * s) {

  DebugChangeOutput( MainLog, t, s );
}
