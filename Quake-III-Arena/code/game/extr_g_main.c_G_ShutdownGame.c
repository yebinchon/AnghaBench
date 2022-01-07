
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ logFile; } ;


 int BotAIShutdown (int) ;
 int G_LogPrintf (char*) ;
 int G_Printf (char*) ;
 int G_WriteSessionData () ;
 TYPE_1__ level ;
 scalar_t__ trap_Cvar_VariableIntegerValue (char*) ;
 int trap_FS_FCloseFile (scalar_t__) ;

void G_ShutdownGame( int restart ) {
 G_Printf ("==== ShutdownGame ====\n");

 if ( level.logFile ) {
  G_LogPrintf("ShutdownGame:\n" );
  G_LogPrintf("------------------------------------------------------------\n" );
  trap_FS_FCloseFile( level.logFile );
 }


 G_WriteSessionData();

 if ( trap_Cvar_VariableIntegerValue( "bot_enable" ) ) {
  BotAIShutdown( restart );
 }
}
