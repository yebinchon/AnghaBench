
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int servers ;
struct TYPE_5__ {int adr; } ;
typedef TYPE_1__ serverInfo_t ;
typedef int netadr_t ;
struct TYPE_6__ {int numlocalservers; int nummplayerservers; int numglobalservers; int numfavoriteservers; TYPE_1__* favoriteServers; TYPE_1__* globalServers; TYPE_1__* mplayerServers; TYPE_1__* localServers; } ;






 int Com_Memcpy (TYPE_1__*,TYPE_1__*,int) ;
 scalar_t__ NET_CompareAdr (int ,int ) ;
 int NET_StringToAdr (char const*,int *) ;
 TYPE_2__ cls ;

__attribute__((used)) static void LAN_RemoveServer(int source, const char *addr) {
 int *count, i;
 serverInfo_t *servers = ((void*)0);
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
   count = &cls.numglobalservers;
   servers = &cls.globalServers[0];
   break;
  case 131 :
   count = &cls.numfavoriteservers;
   servers = &cls.favoriteServers[0];
   break;
 }
 if (servers) {
  netadr_t comp;
  NET_StringToAdr( addr, &comp );
  for (i = 0; i < *count; i++) {
   if (NET_CompareAdr( comp, servers[i].adr)) {
    int j = i;
    while (j < *count - 1) {
     Com_Memcpy(&servers[j], &servers[j+1], sizeof(servers[j]));
     j++;
    }
    (*count)--;
    break;
   }
  }
 }
}
