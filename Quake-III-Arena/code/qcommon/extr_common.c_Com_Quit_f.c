
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CL_Shutdown () ;
 int Com_Shutdown () ;
 int FS_Shutdown (int ) ;
 int SV_Shutdown (char*) ;
 int Sys_Quit () ;
 int com_errorEntered ;
 int qtrue ;

void Com_Quit_f( void ) {

 if ( !com_errorEntered ) {
  SV_Shutdown ("Server quit\n");
  CL_Shutdown ();
  Com_Shutdown ();
  FS_Shutdown(qtrue);
 }
 Sys_Quit ();
}
