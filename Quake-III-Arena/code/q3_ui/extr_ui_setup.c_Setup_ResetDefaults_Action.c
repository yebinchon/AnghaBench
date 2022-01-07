
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 int EXEC_APPEND ;
 int trap_Cmd_ExecuteText (int ,char*) ;

__attribute__((used)) static void Setup_ResetDefaults_Action( qboolean result ) {
 if( !result ) {
  return;
 }
 trap_Cmd_ExecuteText( EXEC_APPEND, "exec default.cfg\n");
 trap_Cmd_ExecuteText( EXEC_APPEND, "cvar_restart\n");
 trap_Cmd_ExecuteText( EXEC_APPEND, "vid_restart\n" );
}
