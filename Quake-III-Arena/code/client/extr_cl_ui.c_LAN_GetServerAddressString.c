
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* favoriteServers; TYPE_3__* globalServers; TYPE_2__* mplayerServers; TYPE_1__* localServers; } ;
struct TYPE_9__ {int adr; } ;
struct TYPE_8__ {int adr; } ;
struct TYPE_7__ {int adr; } ;
struct TYPE_6__ {int adr; } ;






 int MAX_GLOBAL_SERVERS ;
 int MAX_OTHER_SERVERS ;
 int NET_AdrToString (int ) ;
 int Q_strncpyz (char*,int ,int) ;
 TYPE_5__ cls ;

__attribute__((used)) static void LAN_GetServerAddressString( int source, int n, char *buf, int buflen ) {
 switch (source) {
  case 129 :
   if (n >= 0 && n < MAX_OTHER_SERVERS) {
    Q_strncpyz(buf, NET_AdrToString( cls.localServers[n].adr) , buflen );
    return;
   }
   break;
  case 128 :
   if (n >= 0 && n < MAX_OTHER_SERVERS) {
    Q_strncpyz(buf, NET_AdrToString( cls.mplayerServers[n].adr) , buflen );
    return;
   }
   break;
  case 130 :
   if (n >= 0 && n < MAX_GLOBAL_SERVERS) {
    Q_strncpyz(buf, NET_AdrToString( cls.globalServers[n].adr) , buflen );
    return;
   }
   break;
  case 131 :
   if (n >= 0 && n < MAX_OTHER_SERVERS) {
    Q_strncpyz(buf, NET_AdrToString( cls.favoriteServers[n].adr) , buflen );
    return;
   }
   break;
 }
 buf[0] = '\0';
}
