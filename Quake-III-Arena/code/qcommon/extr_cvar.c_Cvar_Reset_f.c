
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cmd_Argc () ;
 int Cmd_Argv (int) ;
 int Com_Printf (char*) ;
 int Cvar_Reset (int ) ;

void Cvar_Reset_f( void ) {
 if ( Cmd_Argc() != 2 ) {
  Com_Printf ("usage: reset <variable>\n");
  return;
 }
 Cvar_Reset( Cmd_Argv( 1 ) );
}
