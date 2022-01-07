
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CG_CrosshairPlayer () ;
 int atoi (char*) ;
 int trap_Argv (int,char*,int) ;
 int trap_SendConsoleCommand (int ) ;
 int va (char*,int,int ) ;

void CG_TargetCommand_f( void ) {
 int targetNum;
 char test[4];

 targetNum = CG_CrosshairPlayer();
 if (!targetNum ) {
  return;
 }

 trap_Argv( 1, test, 4 );
 trap_SendConsoleCommand( va( "gc %i %i", targetNum, atoi( test ) ) );
}
