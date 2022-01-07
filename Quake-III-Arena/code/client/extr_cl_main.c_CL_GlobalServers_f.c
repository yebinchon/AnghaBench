
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int port; int type; } ;
typedef TYPE_1__ netadr_t ;
struct TYPE_6__ {int masterNum; int nummplayerservers; int numglobalservers; int pingUpdateSource; } ;


 int AS_GLOBAL ;
 int AS_MPLAYER ;
 int BigShort (int ) ;
 int Cmd_Argc () ;
 char* Cmd_Argv (int) ;
 int Com_Printf (char*) ;
 scalar_t__ Cvar_VariableValue (char*) ;
 int MASTER_SERVER_NAME ;
 int NA_IP ;
 int NET_OutOfBandPrint (int ,TYPE_1__,char*) ;
 int NET_StringToAdr (int ,TYPE_1__*) ;
 int NS_SERVER ;
 int PORT_MASTER ;
 int atoi (char*) ;
 TYPE_2__ cls ;
 int sprintf (char*,char*,...) ;
 int strlen (char*) ;

void CL_GlobalServers_f( void ) {
 netadr_t to;
 int i;
 int count;
 char *buffptr;
 char command[1024];

 if ( Cmd_Argc() < 3) {
  Com_Printf( "usage: globalservers <master# 0-1> <protocol> [keywords]\n");
  return;
 }

 cls.masterNum = atoi( Cmd_Argv(1) );

 Com_Printf( "Requesting servers from the master...\n");




 if( cls.masterNum == 1 ) {
  NET_StringToAdr( MASTER_SERVER_NAME, &to );
  cls.nummplayerservers = -1;
  cls.pingUpdateSource = AS_MPLAYER;
 }
 else {
  NET_StringToAdr( MASTER_SERVER_NAME, &to );
  cls.numglobalservers = -1;
  cls.pingUpdateSource = AS_GLOBAL;
 }
 to.type = NA_IP;
 to.port = BigShort(PORT_MASTER);

 sprintf( command, "getservers %s", Cmd_Argv(2) );


 buffptr = command + strlen( command );
 count = Cmd_Argc();
 for (i=3; i<count; i++)
  buffptr += sprintf( buffptr, " %s", Cmd_Argv(i) );


 if ( Cvar_VariableValue( "fs_restrict" ) ) {
  buffptr += sprintf( buffptr, " demo" );
 }

 NET_OutOfBandPrint( NS_SERVER, to, command );
}
