
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cbuf_InsertText (int ) ;
 int Cmd_Argc () ;
 int Cmd_Argv (int) ;
 int Com_Printf (char*) ;
 char* Cvar_VariableString (int ) ;
 int va (char*,char*) ;

void Cmd_Vstr_f( void ) {
 char *v;

 if (Cmd_Argc () != 2) {
  Com_Printf ("vstr <variablename> : execute a variable command\n");
  return;
 }

 v = Cvar_VariableString( Cmd_Argv( 1 ) );
 Cbuf_InsertText( va("%s\n", v ) );
}
