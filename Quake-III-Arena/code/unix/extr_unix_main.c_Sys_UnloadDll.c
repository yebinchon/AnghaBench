
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_Printf (char*,...) ;
 int dlclose (void*) ;
 char* dlerror () ;

void Sys_UnloadDll( void *dllHandle ) {

  const char* err;
  if ( !dllHandle )
  {
    Com_Printf("Sys_UnloadDll(NULL)\n");
    return;
  }
  dlclose( dllHandle );
  err = dlerror();
  if ( err != ((void*)0) )
    Com_Printf ( "Sys_UnloadGame failed on dlclose: \"%s\"!\n", err );
}
