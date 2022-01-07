
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cmd_Argc () ;
 int Cmd_Argv (int) ;
 int Com_Printf (char*) ;
 int Cvar_Set2 (int ,int ,int ) ;
 int Cvar_VariableValue (int ) ;
 int qfalse ;
 int va (char*,int) ;

void Cvar_Toggle_f( void ) {
 int v;

 if ( Cmd_Argc() != 2 ) {
  Com_Printf ("usage: toggle <variable>\n");
  return;
 }

 v = Cvar_VariableValue( Cmd_Argv( 1 ) );
 v = !v;

 Cvar_Set2 (Cmd_Argv(1), va("%i", v), qfalse);
}
