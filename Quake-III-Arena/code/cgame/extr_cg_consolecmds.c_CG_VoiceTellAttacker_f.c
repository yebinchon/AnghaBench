
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CG_LastAttacker () ;
 int Com_sprintf (char*,int,char*,int,char*) ;
 int trap_Args (char*,int) ;
 int trap_SendClientCommand (char*) ;

__attribute__((used)) static void CG_VoiceTellAttacker_f( void ) {
 int clientNum;
 char command[128];
 char message[128];

 clientNum = CG_LastAttacker();
 if ( clientNum == -1 ) {
  return;
 }

 trap_Args( message, 128 );
 Com_sprintf( command, 128, "vtell %i %s", clientNum, message );
 trap_SendClientCommand( command );
}
