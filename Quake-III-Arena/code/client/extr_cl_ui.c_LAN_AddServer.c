
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int visible; int hostName; int adr; } ;
typedef TYPE_1__ serverInfo_t ;
typedef int netadr_t ;
struct TYPE_4__ {int numlocalservers; int nummplayerservers; int numglobalservers; int numfavoriteservers; TYPE_1__* favoriteServers; TYPE_1__* globalServers; TYPE_1__* mplayerServers; TYPE_1__* localServers; } ;






 int MAX_GLOBAL_SERVERS ;
 int MAX_OTHER_SERVERS ;
 scalar_t__ NET_CompareAdr (int ,int ) ;
 int NET_StringToAdr (char const*,int *) ;
 int Q_strncpyz (int ,char const*,int) ;
 TYPE_2__ cls ;
 int qtrue ;

__attribute__((used)) static int LAN_AddServer(int source, const char *name, const char *address) {
 int max, *count, i;
 netadr_t adr;
 serverInfo_t *servers = ((void*)0);
 max = MAX_OTHER_SERVERS;
 count = 0;

 switch (source) {
  case 129 :
   count = &cls.numlocalservers;
   servers = &cls.localServers[0];
   break;
  case 128 :
   count = &cls.nummplayerservers;
   servers = &cls.mplayerServers[0];
   break;
  case 130 :
   max = MAX_GLOBAL_SERVERS;
   count = &cls.numglobalservers;
   servers = &cls.globalServers[0];
   break;
  case 131 :
   count = &cls.numfavoriteservers;
   servers = &cls.favoriteServers[0];
   break;
 }
 if (servers && *count < max) {
  NET_StringToAdr( address, &adr );
  for ( i = 0; i < *count; i++ ) {
   if (NET_CompareAdr(servers[i].adr, adr)) {
    break;
   }
  }
  if (i >= *count) {
   servers[*count].adr = adr;
   Q_strncpyz(servers[*count].hostName, name, sizeof(servers[*count].hostName));
   servers[*count].visible = qtrue;
   (*count)++;
   return 1;
  }
  return 0;
 }
 return -1;
}
