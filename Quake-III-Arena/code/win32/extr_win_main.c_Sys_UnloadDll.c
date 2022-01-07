
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_Error (int ,char*) ;
 int ERR_FATAL ;
 int FreeLibrary (void*) ;

void Sys_UnloadDll( void *dllHandle ) {
 if ( !dllHandle ) {
  return;
 }
 if ( !FreeLibrary( dllHandle ) ) {
  Com_Error (ERR_FATAL, "Sys_UnloadDll FreeLibrary failed");
 }
}
