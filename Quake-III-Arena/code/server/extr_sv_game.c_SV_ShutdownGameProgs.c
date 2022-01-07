
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GAME_SHUTDOWN ;
 int VM_Call (int *,int ,int ) ;
 int VM_Free (int *) ;
 int * gvm ;
 int qfalse ;

void SV_ShutdownGameProgs( void ) {
 if ( !gvm ) {
  return;
 }
 VM_Call( gvm, GAME_SHUTDOWN, qfalse );
 VM_Free( gvm );
 gvm = ((void*)0);
}
