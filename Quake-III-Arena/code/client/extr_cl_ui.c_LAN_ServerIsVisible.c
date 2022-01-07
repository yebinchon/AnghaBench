
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* favoriteServers; TYPE_4__* globalServers; TYPE_3__* mplayerServers; TYPE_2__* localServers; } ;
struct TYPE_9__ {int visible; } ;
struct TYPE_8__ {int visible; } ;
struct TYPE_7__ {int visible; } ;
struct TYPE_6__ {int visible; } ;






 int MAX_GLOBAL_SERVERS ;
 int MAX_OTHER_SERVERS ;
 TYPE_5__ cls ;
 int qfalse ;

__attribute__((used)) static int LAN_ServerIsVisible(int source, int n ) {
 switch (source) {
  case 129 :
   if (n >= 0 && n < MAX_OTHER_SERVERS) {
    return cls.localServers[n].visible;
   }
   break;
  case 128 :
   if (n >= 0 && n < MAX_OTHER_SERVERS) {
    return cls.mplayerServers[n].visible;
   }
   break;
  case 130 :
   if (n >= 0 && n < MAX_GLOBAL_SERVERS) {
    return cls.globalServers[n].visible;
   }
   break;
  case 131 :
   if (n >= 0 && n < MAX_OTHER_SERVERS) {
    return cls.favoriteServers[n].visible;
   }
   break;
 }
 return qfalse;
}
