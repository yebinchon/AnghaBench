
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ status; scalar_t__* fileName; scalar_t__ alterGameState; scalar_t__ iFile; int buf; } ;
struct TYPE_3__ {int state; } ;


 int CA_DISCONNECTED ;
 int CL_handle ;
 int Cbuf_ExecuteText (int ,int ) ;
 int Com_DPrintf (char*) ;
 int Cvar_Set (char*,char*) ;
 char* Cvar_VariableString (char*) ;
 int EXEC_APPEND ;
 scalar_t__ FMV_IDLE ;
 int FS_FCloseFile (scalar_t__) ;
 int Sys_EndStreamedFile (scalar_t__) ;
 TYPE_2__* cinTable ;
 TYPE_1__ cls ;
 size_t currentHandle ;
 int va (char*,char const*) ;

__attribute__((used)) static void RoQShutdown( void ) {
 const char *s;

 if (!cinTable[currentHandle].buf) {
  return;
 }

 if ( cinTable[currentHandle].status == FMV_IDLE ) {
  return;
 }
 Com_DPrintf("finished cinematic\n");
 cinTable[currentHandle].status = FMV_IDLE;

 if (cinTable[currentHandle].iFile) {
  Sys_EndStreamedFile( cinTable[currentHandle].iFile );
  FS_FCloseFile( cinTable[currentHandle].iFile );
  cinTable[currentHandle].iFile = 0;
 }

 if (cinTable[currentHandle].alterGameState) {
  cls.state = CA_DISCONNECTED;




  s = Cvar_VariableString( "nextmap" );
  if ( s[0] ) {
   Cbuf_ExecuteText( EXEC_APPEND, va("%s\n", s) );
   Cvar_Set( "nextmap", "" );
  }
  CL_handle = -1;
 }
 cinTable[currentHandle].fileName[0] = 0;
 currentHandle = -1;
}
