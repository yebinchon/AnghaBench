
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ refreshtime; scalar_t__ nextpingtime; size_t numqueriedservers; size_t numfavoriteaddresses; size_t currentping; char** favoriteaddresses; TYPE_1__* pinglist; } ;
struct TYPE_5__ {scalar_t__ realtime; } ;
struct TYPE_4__ {char* adrstr; int start; } ;


 scalar_t__ AS_FAVORITES ;
 scalar_t__ AS_LOCAL ;
 int ArenaServers_Insert (char*,char*,int) ;
 int ArenaServers_MaxPing () ;
 int ArenaServers_StopRefresh () ;
 int ArenaServers_UpdateMenu () ;
 int EXEC_NOW ;
 int MAX_ADDRESSLENGTH ;
 int MAX_INFO_STRING ;
 int MAX_PINGREQUESTS ;
 int Q_stricmp (char*,char*) ;
 TYPE_3__ g_arenaservers ;
 scalar_t__ g_servertype ;
 int strcpy (char*,char*) ;
 int trap_Cmd_ExecuteText (int ,int ) ;
 int trap_LAN_ClearPing (int) ;
 int trap_LAN_GetPing (int,char*,int,int*) ;
 int trap_LAN_GetPingInfo (int,char*,int) ;
 int trap_LAN_GetPingQueueCount () ;
 int trap_LAN_GetServerAddressString (scalar_t__,size_t,char*,int) ;
 scalar_t__ trap_LAN_GetServerCount (scalar_t__) ;
 TYPE_2__ uis ;
 int va (char*,char*) ;

__attribute__((used)) static void ArenaServers_DoRefresh( void )
{
 int i;
 int j;
 int time;
 int maxPing;
 char adrstr[MAX_ADDRESSLENGTH];
 char info[MAX_INFO_STRING];

 if (uis.realtime < g_arenaservers.refreshtime)
 {
   if (g_servertype != AS_FAVORITES) {
   if (g_servertype == AS_LOCAL) {
    if (!trap_LAN_GetServerCount(g_servertype)) {
     return;
    }
   }
   if (trap_LAN_GetServerCount(g_servertype) < 0) {

     return;
   }
   }
 }

 if (uis.realtime < g_arenaservers.nextpingtime)
 {

  return;
 }


 g_arenaservers.nextpingtime = uis.realtime + 10;


 maxPing = ArenaServers_MaxPing();
 for (i=0; i<MAX_PINGREQUESTS; i++)
 {
  trap_LAN_GetPing( i, adrstr, MAX_ADDRESSLENGTH, &time );
  if (!adrstr[0])
  {

   continue;
  }


  for (j=0; j<MAX_PINGREQUESTS; j++)
   if (!Q_stricmp( adrstr, g_arenaservers.pinglist[j].adrstr ))
    break;

  if (j < MAX_PINGREQUESTS)
  {

   if (!time)
   {
    time = uis.realtime - g_arenaservers.pinglist[j].start;
    if (time < maxPing)
    {

     continue;
    }
   }

   if (time > maxPing)
   {

    info[0] = '\0';
    time = maxPing;
   }
   else
   {
    trap_LAN_GetPingInfo( i, info, MAX_INFO_STRING );
   }


   ArenaServers_Insert( adrstr, info, time );


   g_arenaservers.pinglist[j].adrstr[0] = '\0';
     }


  trap_LAN_ClearPing( i );
 }



 if (g_servertype == AS_FAVORITES) {
   g_arenaservers.numqueriedservers = g_arenaservers.numfavoriteaddresses;
 } else {
   g_arenaservers.numqueriedservers = trap_LAN_GetServerCount(g_servertype);
 }






 for (i=0; i<MAX_PINGREQUESTS && g_arenaservers.currentping < g_arenaservers.numqueriedservers; i++)
 {
  if (trap_LAN_GetPingQueueCount() >= MAX_PINGREQUESTS)
  {

   break;
  }


  for (j=0; j<MAX_PINGREQUESTS; j++)
   if (!g_arenaservers.pinglist[j].adrstr[0])
    break;

  if (j >= MAX_PINGREQUESTS)

   break;



  if (g_servertype == AS_FAVORITES) {
    strcpy( adrstr, g_arenaservers.favoriteaddresses[g_arenaservers.currentping] );
  } else {
    trap_LAN_GetServerAddressString(g_servertype, g_arenaservers.currentping, adrstr, MAX_ADDRESSLENGTH );
  }

  strcpy( g_arenaservers.pinglist[j].adrstr, adrstr );
  g_arenaservers.pinglist[j].start = uis.realtime;

  trap_Cmd_ExecuteText( EXEC_NOW, va( "ping %s\n", adrstr ) );


  g_arenaservers.currentping++;
 }

 if (!trap_LAN_GetPingQueueCount())
 {

  ArenaServers_StopRefresh();
  return;
 }


 ArenaServers_UpdateMenu();
}
