
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int netadr_t ;
typedef int msg_t ;
struct TYPE_4__ {int connectTime; int lastPacketSentTime; int serverMessage; int netchan; int serverAddress; int challenge; scalar_t__ connectPacketCount; } ;
struct TYPE_3__ {scalar_t__ state; } ;


 scalar_t__ CA_CHALLENGING ;
 scalar_t__ CA_CONNECTED ;
 scalar_t__ CA_CONNECTING ;
 int CL_DisconnectPacket (int ) ;
 int CL_MotdPacket (int ) ;
 int CL_ServerInfoPacket (int ,int *) ;
 int CL_ServerStatusResponse (int ,int *) ;
 int CL_ServersResponsePacket (int ,int *) ;
 char* Cmd_Argv (int) ;
 int Cmd_TokenizeString (char*) ;
 int Com_DPrintf (char*,...) ;
 int Com_Printf (char*,...) ;
 int Cvar_VariableValue (char*) ;
 int MSG_BeginReadingOOB (int *) ;
 int MSG_ReadLong (int *) ;
 char* MSG_ReadString (int *) ;
 char* MSG_ReadStringLine (int *) ;
 int NET_AdrToString (int ) ;
 int NET_CompareBaseAdr (int ,int ) ;
 int NET_OutOfBandPrint (int ,int ,char*,char*) ;
 int NS_CLIENT ;
 int Netchan_Setup (int ,int *,int ,int ) ;
 int Q_stricmp (char*,char*) ;
 int Q_strncmp (char*,char*,int) ;
 int Q_strncpyz (int ,char*,int) ;
 int atoi (char*) ;
 TYPE_2__ clc ;
 TYPE_1__ cls ;

void CL_ConnectionlessPacket( netadr_t from, msg_t *msg ) {
 char *s;
 char *c;

 MSG_BeginReadingOOB( msg );
 MSG_ReadLong( msg );

 s = MSG_ReadStringLine( msg );

 Cmd_TokenizeString( s );

 c = Cmd_Argv(0);

 Com_DPrintf ("CL packet %s: %s\n", NET_AdrToString(from), c);


 if ( !Q_stricmp(c, "challengeResponse") ) {
  if ( cls.state != CA_CONNECTING ) {
   Com_Printf( "Unwanted challenge response received.  Ignored.\n" );
  } else {

   clc.challenge = atoi(Cmd_Argv(1));
   cls.state = CA_CHALLENGING;
   clc.connectPacketCount = 0;
   clc.connectTime = -99999;



   clc.serverAddress = from;
   Com_DPrintf ("challengeResponse: %d\n", clc.challenge);
  }
  return;
 }


 if ( !Q_stricmp(c, "connectResponse") ) {
  if ( cls.state >= CA_CONNECTED ) {
   Com_Printf ("Dup connect received.  Ignored.\n");
   return;
  }
  if ( cls.state != CA_CHALLENGING ) {
   Com_Printf ("connectResponse packet while not connecting.  Ignored.\n");
   return;
  }
  if ( !NET_CompareBaseAdr( from, clc.serverAddress ) ) {
   Com_Printf( "connectResponse from a different address.  Ignored.\n" );
   Com_Printf( "%s should have been %s\n", NET_AdrToString( from ),
    NET_AdrToString( clc.serverAddress ) );
   return;
  }
  Netchan_Setup (NS_CLIENT, &clc.netchan, from, Cvar_VariableValue( "net_qport" ) );
  cls.state = CA_CONNECTED;
  clc.lastPacketSentTime = -9999;
  return;
 }


 if ( !Q_stricmp(c, "infoResponse") ) {
  CL_ServerInfoPacket( from, msg );
  return;
 }


 if ( !Q_stricmp(c, "statusResponse") ) {
  CL_ServerStatusResponse( from, msg );
  return;
 }



 if (!Q_stricmp(c, "disconnect")) {
  CL_DisconnectPacket( from );
  return;
 }


 if ( !Q_stricmp(c, "echo") ) {
  NET_OutOfBandPrint( NS_CLIENT, from, "%s", Cmd_Argv(1) );
  return;
 }


 if ( !Q_stricmp(c, "keyAuthorize") ) {

  return;
 }


 if ( !Q_stricmp(c, "motd") ) {
  CL_MotdPacket( from );
  return;
 }


 if ( !Q_stricmp(c, "print") ) {
  s = MSG_ReadString( msg );
  Q_strncpyz( clc.serverMessage, s, sizeof( clc.serverMessage ) );
  Com_Printf( "%s", s );
  return;
 }


 if ( !Q_strncmp(c, "getserversResponse", 18) ) {
  CL_ServersResponsePacket( from, msg );
  return;
 }

 Com_DPrintf ("Unknown connectionless packet command.\n");
}
