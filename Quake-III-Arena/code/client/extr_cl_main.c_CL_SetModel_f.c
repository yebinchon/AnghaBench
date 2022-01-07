
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;


 char* Cmd_Argv (int) ;
 int Com_Printf (char*,char*) ;
 int Cvar_Set (char*,char*) ;
 int Cvar_VariableStringBuffer (char*,char*,int) ;

void CL_SetModel_f( void ) {
 char *arg;
 char name[256];

 arg = Cmd_Argv( 1 );
 if (arg[0]) {
  Cvar_Set( "model", arg );
  Cvar_Set( "headmodel", arg );
 } else {
  Cvar_VariableStringBuffer( "model", name, sizeof(name) );
  Com_Printf("model is set to %s\n", name);
 }
}
