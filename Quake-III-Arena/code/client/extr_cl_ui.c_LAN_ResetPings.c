
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ping; } ;
typedef TYPE_1__ serverInfo_t ;
struct TYPE_4__ {TYPE_1__* favoriteServers; TYPE_1__* globalServers; TYPE_1__* mplayerServers; TYPE_1__* localServers; } ;






 int MAX_GLOBAL_SERVERS ;
 int MAX_OTHER_SERVERS ;
 TYPE_2__ cls ;

__attribute__((used)) static void LAN_ResetPings(int source) {
 int count,i;
 serverInfo_t *servers = ((void*)0);
 count = 0;

 switch (source) {
  case 129 :
   servers = &cls.localServers[0];
   count = MAX_OTHER_SERVERS;
   break;
  case 128 :
   servers = &cls.mplayerServers[0];
   count = MAX_OTHER_SERVERS;
   break;
  case 130 :
   servers = &cls.globalServers[0];
   count = MAX_GLOBAL_SERVERS;
   break;
  case 131 :
   servers = &cls.favoriteServers[0];
   count = MAX_OTHER_SERVERS;
   break;
 }
 if (servers) {
  for (i = 0; i < count; i++) {
   servers[i].ping = -1;
  }
 }
}
