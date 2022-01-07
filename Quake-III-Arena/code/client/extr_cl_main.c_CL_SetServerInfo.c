
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ping; void* punkbuster; void* maxPing; void* minPing; void* netType; void* gameType; int game; void* maxClients; int mapName; int hostName; void* clients; } ;
typedef TYPE_1__ serverInfo_t ;


 int Info_ValueForKey (char const*,char*) ;
 int MAX_NAME_LENGTH ;
 int Q_strncpyz (int ,int ,int ) ;
 void* atoi (int ) ;

__attribute__((used)) static void CL_SetServerInfo(serverInfo_t *server, const char *info, int ping) {
 if (server) {
  if (info) {
   server->clients = atoi(Info_ValueForKey(info, "clients"));
   Q_strncpyz(server->hostName,Info_ValueForKey(info, "hostname"), MAX_NAME_LENGTH);
   Q_strncpyz(server->mapName, Info_ValueForKey(info, "mapname"), MAX_NAME_LENGTH);
   server->maxClients = atoi(Info_ValueForKey(info, "sv_maxclients"));
   Q_strncpyz(server->game,Info_ValueForKey(info, "game"), MAX_NAME_LENGTH);
   server->gameType = atoi(Info_ValueForKey(info, "gametype"));
   server->netType = atoi(Info_ValueForKey(info, "nettype"));
   server->minPing = atoi(Info_ValueForKey(info, "minping"));
   server->maxPing = atoi(Info_ValueForKey(info, "maxping"));
   server->punkbuster = atoi(Info_ValueForKey(info, "punkbuster"));
  }
  server->ping = ping;
 }
}
