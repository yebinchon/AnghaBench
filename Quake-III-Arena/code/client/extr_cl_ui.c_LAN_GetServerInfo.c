
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int punkbuster; int adr; int netType; int gameType; int game; int maxPing; int minPing; int ping; int maxClients; int clients; int mapName; int hostName; } ;
typedef TYPE_1__ serverInfo_t ;
struct TYPE_4__ {TYPE_1__* favoriteServers; TYPE_1__* globalServers; TYPE_1__* mplayerServers; TYPE_1__* localServers; } ;






 int Info_SetValueForKey (char*,char*,int ) ;
 int MAX_GLOBAL_SERVERS ;
 int MAX_OTHER_SERVERS ;
 int MAX_STRING_CHARS ;
 int NET_AdrToString (int ) ;
 int Q_strncpyz (char*,char*,int) ;
 TYPE_2__ cls ;
 int va (char*,int ) ;

__attribute__((used)) static void LAN_GetServerInfo( int source, int n, char *buf, int buflen ) {
 char info[MAX_STRING_CHARS];
 serverInfo_t *server = ((void*)0);
 info[0] = '\0';
 switch (source) {
  case 129 :
   if (n >= 0 && n < MAX_OTHER_SERVERS) {
    server = &cls.localServers[n];
   }
   break;
  case 128 :
   if (n >= 0 && n < MAX_OTHER_SERVERS) {
    server = &cls.mplayerServers[n];
   }
   break;
  case 130 :
   if (n >= 0 && n < MAX_GLOBAL_SERVERS) {
    server = &cls.globalServers[n];
   }
   break;
  case 131 :
   if (n >= 0 && n < MAX_OTHER_SERVERS) {
    server = &cls.favoriteServers[n];
   }
   break;
 }
 if (server && buf) {
  buf[0] = '\0';
  Info_SetValueForKey( info, "hostname", server->hostName);
  Info_SetValueForKey( info, "mapname", server->mapName);
  Info_SetValueForKey( info, "clients", va("%i",server->clients));
  Info_SetValueForKey( info, "sv_maxclients", va("%i",server->maxClients));
  Info_SetValueForKey( info, "ping", va("%i",server->ping));
  Info_SetValueForKey( info, "minping", va("%i",server->minPing));
  Info_SetValueForKey( info, "maxping", va("%i",server->maxPing));
  Info_SetValueForKey( info, "game", server->game);
  Info_SetValueForKey( info, "gametype", va("%i",server->gameType));
  Info_SetValueForKey( info, "nettype", va("%i",server->netType));
  Info_SetValueForKey( info, "addr", NET_AdrToString(server->adr));
  Info_SetValueForKey( info, "punkbuster", va("%i", server->punkbuster));
  Q_strncpyz(buf, info, buflen);
 } else {
  if (buf) {
   buf[0] = '\0';
  }
 }
}
