
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_Error (int ,char*) ;
 int ERR_FATAL ;
 int GAME_SHUTDOWN ;
 int SV_InitGameVM (int ) ;
 int VM_Call (scalar_t__,int ,int ) ;
 scalar_t__ VM_Restart (scalar_t__) ;
 scalar_t__ gvm ;
 int qtrue ;

void SV_RestartGameProgs( void ) {
 if ( !gvm ) {
  return;
 }
 VM_Call( gvm, GAME_SHUTDOWN, qtrue );


 gvm = VM_Restart( gvm );
 if ( !gvm ) {
  Com_Error( ERR_FATAL, "VM_Restart on game failed" );
 }

 SV_InitGameVM( qtrue );
}
