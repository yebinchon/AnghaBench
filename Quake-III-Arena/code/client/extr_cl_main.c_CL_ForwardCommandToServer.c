
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ demoplaying; } ;
struct TYPE_3__ {scalar_t__ state; } ;


 scalar_t__ CA_CONNECTED ;
 int CL_AddReliableCommand (char const*) ;
 int Cmd_Argc () ;
 char* Cmd_Argv (int ) ;
 int Com_Printf (char*,char*) ;
 TYPE_2__ clc ;
 TYPE_1__ cls ;

void CL_ForwardCommandToServer( const char *string ) {
 char *cmd;

 cmd = Cmd_Argv(0);


 if ( cmd[0] == '-' ) {
  return;
 }

 if ( clc.demoplaying || cls.state < CA_CONNECTED || cmd[0] == '+' ) {
  Com_Printf ("Unknown command \"%s\"\n", cmd);
  return;
 }

 if ( Cmd_Argc() > 1 ) {
  CL_AddReliableCommand( string );
 } else {
  CL_AddReliableCommand( cmd );
 }
}
