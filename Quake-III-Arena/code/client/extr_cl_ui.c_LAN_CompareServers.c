
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ping; int gameType; int clients; int mapName; int hostName; } ;
typedef TYPE_1__ serverInfo_t ;


 TYPE_1__* LAN_GetServerPtr (int,int) ;
 int Q_stricmp (int ,int ) ;






__attribute__((used)) static int LAN_CompareServers( int source, int sortKey, int sortDir, int s1, int s2 ) {
 int res;
 serverInfo_t *server1, *server2;

 server1 = LAN_GetServerPtr(source, s1);
 server2 = LAN_GetServerPtr(source, s2);
 if (!server1 || !server2) {
  return 0;
 }

 res = 0;
 switch( sortKey ) {
  case 130:
   res = Q_stricmp( server1->hostName, server2->hostName );
   break;

  case 129:
   res = Q_stricmp( server1->mapName, server2->mapName );
   break;
  case 132:
   if (server1->clients < server2->clients) {
    res = -1;
   }
   else if (server1->clients > server2->clients) {
    res = 1;
   }
   else {
    res = 0;
   }
   break;
  case 131:
   if (server1->gameType < server2->gameType) {
    res = -1;
   }
   else if (server1->gameType > server2->gameType) {
    res = 1;
   }
   else {
    res = 0;
   }
   break;
  case 128:
   if (server1->ping < server2->ping) {
    res = -1;
   }
   else if (server1->ping > server2->ping) {
    res = 1;
   }
   else {
    res = 0;
   }
   break;
 }

 if (sortDir) {
  if (res < 0)
   return 1;
  if (res > 0)
   return -1;
  return 0;
 }
 return res;
}
