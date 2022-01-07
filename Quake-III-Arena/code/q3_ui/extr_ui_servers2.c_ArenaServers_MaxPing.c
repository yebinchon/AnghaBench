
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ trap_Cvar_VariableValue (char*) ;

__attribute__((used)) static int ArenaServers_MaxPing( void ) {
 int maxPing;

 maxPing = (int)trap_Cvar_VariableValue( "cl_maxPing" );
 if( maxPing < 100 ) {
  maxPing = 100;
 }
 return maxPing;
}
