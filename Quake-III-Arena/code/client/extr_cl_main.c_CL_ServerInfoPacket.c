
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ port; int type; } ;
typedef TYPE_2__ netadr_t ;
typedef int msg_t ;
typedef int info ;
struct TYPE_13__ {char* info; scalar_t__ time; scalar_t__ start; TYPE_2__ adr; } ;
struct TYPE_12__ {scalar_t__ pingUpdateSource; int numlocalservers; TYPE_1__* localServers; scalar_t__ realtime; } ;
struct TYPE_10__ {char* hostName; char* mapName; int ping; char* game; int netType; scalar_t__ punkbuster; scalar_t__ gameType; scalar_t__ minPing; scalar_t__ maxPing; scalar_t__ maxClients; scalar_t__ clients; TYPE_2__ adr; } ;


 scalar_t__ AS_LOCAL ;
 int CL_SetServerInfoByAddress (TYPE_2__,char*,scalar_t__) ;
 int Com_DPrintf (char*,...) ;
 int Com_Printf (char*,int ,char*) ;
 int Info_SetValueForKey (char*,char*,int ) ;
 int Info_ValueForKey (char*,char*) ;
 int MAX_INFO_STRING ;
 int MAX_OTHER_SERVERS ;
 int MAX_PINGREQUESTS ;
 char* MSG_ReadString (int *) ;




 int NET_AdrToString (TYPE_2__) ;
 scalar_t__ NET_CompareAdr (TYPE_2__,TYPE_2__) ;
 int PROTOCOL_VERSION ;
 int Q_strncpyz (char*,char*,int) ;
 int atoi (int ) ;
 TYPE_4__* cl_pinglist ;
 TYPE_3__ cls ;
 int strlen (char*) ;
 int strncat (char*,char*,int) ;
 int va (char*,int) ;

void CL_ServerInfoPacket( netadr_t from, msg_t *msg ) {
 int i, type;
 char info[MAX_INFO_STRING];
 char* str;
 char *infoString;
 int prot;

 infoString = MSG_ReadString( msg );


 prot = atoi( Info_ValueForKey( infoString, "protocol" ) );
 if ( prot != PROTOCOL_VERSION ) {
  Com_DPrintf( "Different protocol info packet: %s\n", infoString );
  return;
 }


 for (i=0; i<MAX_PINGREQUESTS; i++)
 {
  if ( cl_pinglist[i].adr.port && !cl_pinglist[i].time && NET_CompareAdr( from, cl_pinglist[i].adr ) )
  {

   cl_pinglist[i].time = cls.realtime - cl_pinglist[i].start + 1;
   Com_DPrintf( "ping time %dms from %s\n", cl_pinglist[i].time, NET_AdrToString( from ) );


   Q_strncpyz( cl_pinglist[i].info, infoString, sizeof( cl_pinglist[i].info ) );



   switch (from.type)
   {
    case 131:
    case 129:
     str = "udp";
     type = 1;
     break;

    case 128:
    case 130:
     str = "ipx";
     type = 2;
     break;

    default:
     str = "???";
     type = 0;
     break;
   }
   Info_SetValueForKey( cl_pinglist[i].info, "nettype", va("%d", type) );
   CL_SetServerInfoByAddress(from, infoString, cl_pinglist[i].time);

   return;
  }
 }


 if (cls.pingUpdateSource != AS_LOCAL) {
  return;
 }

 for ( i = 0 ; i < MAX_OTHER_SERVERS ; i++ ) {

  if ( cls.localServers[i].adr.port == 0 ) {
   break;
  }


  if ( NET_CompareAdr( from, cls.localServers[i].adr ) ) {
   return;
  }
 }

 if ( i == MAX_OTHER_SERVERS ) {
  Com_DPrintf( "MAX_OTHER_SERVERS hit, dropping infoResponse\n" );
  return;
 }


 cls.numlocalservers = i+1;
 cls.localServers[i].adr = from;
 cls.localServers[i].clients = 0;
 cls.localServers[i].hostName[0] = '\0';
 cls.localServers[i].mapName[0] = '\0';
 cls.localServers[i].maxClients = 0;
 cls.localServers[i].maxPing = 0;
 cls.localServers[i].minPing = 0;
 cls.localServers[i].ping = -1;
 cls.localServers[i].game[0] = '\0';
 cls.localServers[i].gameType = 0;
 cls.localServers[i].netType = from.type;
 cls.localServers[i].punkbuster = 0;

 Q_strncpyz( info, MSG_ReadString( msg ), MAX_INFO_STRING );
 if (strlen(info)) {
  if (info[strlen(info)-1] != '\n') {
   strncat(info, "\n", sizeof(info));
  }
  Com_Printf( "%s: %s", NET_AdrToString( from ), info );
 }
}
