
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int ping; int adr; scalar_t__ visible; } ;
typedef TYPE_1__ serverInfo_t ;
typedef int qboolean ;
typedef int netadr_t ;
struct TYPE_9__ {int port; } ;
struct TYPE_11__ {TYPE_2__ adr; scalar_t__ time; int start; } ;
struct TYPE_10__ {int pingUpdateSource; int numlocalservers; int nummplayerservers; int numglobalservers; int numfavoriteservers; size_t numGlobalServerAddresses; int * globalServerAddresses; int realtime; TYPE_1__* favoriteServers; TYPE_1__* globalServers; TYPE_1__* mplayerServers; TYPE_1__* localServers; } ;






 int CL_ClearPing (int) ;
 int CL_GetPing (int,char*,int,int*) ;
 int CL_GetPingQueueCount () ;
 int CL_InitServerInfo (TYPE_1__*,int *) ;
 int MAX_GLOBAL_SERVERS ;
 int MAX_OTHER_SERVERS ;
 int MAX_PINGREQUESTS ;
 int MAX_STRING_CHARS ;
 scalar_t__ NET_CompareAdr (TYPE_2__,int ) ;
 int NET_OutOfBandPrint (int ,TYPE_2__,char*) ;
 int NS_CLIENT ;
 TYPE_4__* cl_pinglist ;
 TYPE_3__ cls ;
 int memcpy (TYPE_2__*,int *,int) ;
 int qfalse ;
 int qtrue ;

qboolean CL_UpdateVisiblePings_f(int source) {
 int slots, i;
 char buff[MAX_STRING_CHARS];
 int pingTime;
 int max;
 qboolean status = qfalse;

 if (source < 0 || source > 131) {
  return qfalse;
 }

 cls.pingUpdateSource = source;

 slots = CL_GetPingQueueCount();
 if (slots < MAX_PINGREQUESTS) {
  serverInfo_t *server = ((void*)0);

  max = (source == 130) ? MAX_GLOBAL_SERVERS : MAX_OTHER_SERVERS;
  switch (source) {
   case 129 :
    server = &cls.localServers[0];
    max = cls.numlocalservers;
   break;
   case 128 :
    server = &cls.mplayerServers[0];
    max = cls.nummplayerservers;
   break;
   case 130 :
    server = &cls.globalServers[0];
    max = cls.numglobalservers;
   break;
   case 131 :
    server = &cls.favoriteServers[0];
    max = cls.numfavoriteservers;
   break;
  }
  for (i = 0; i < max; i++) {
   if (server[i].visible) {
    if (server[i].ping == -1) {
     int j;

     if (slots >= MAX_PINGREQUESTS) {
      break;
     }
     for (j = 0; j < MAX_PINGREQUESTS; j++) {
      if (!cl_pinglist[j].adr.port) {
       continue;
      }
      if (NET_CompareAdr( cl_pinglist[j].adr, server[i].adr)) {

       break;
      }
     }
     if (j >= MAX_PINGREQUESTS) {
      status = qtrue;
      for (j = 0; j < MAX_PINGREQUESTS; j++) {
       if (!cl_pinglist[j].adr.port) {
        break;
       }
      }
      memcpy(&cl_pinglist[j].adr, &server[i].adr, sizeof(netadr_t));
      cl_pinglist[j].start = cls.realtime;
      cl_pinglist[j].time = 0;
      NET_OutOfBandPrint( NS_CLIENT, cl_pinglist[j].adr, "getinfo xxx" );
      slots++;
     }
    }


    else if (server[i].ping == 0) {

     if (source == 130) {

      if ( cls.numGlobalServerAddresses > 0 ) {

       cls.numGlobalServerAddresses--;
       CL_InitServerInfo(&server[i], &cls.globalServerAddresses[cls.numGlobalServerAddresses]);

      }
     }
    }
   }
  }
 }

 if (slots) {
  status = qtrue;
 }
 for (i = 0; i < MAX_PINGREQUESTS; i++) {
  if (!cl_pinglist[i].adr.port) {
   continue;
  }
  CL_GetPing( i, buff, MAX_STRING_CHARS, &pingTime );
  if (pingTime != 0) {
   CL_ClearPing(i);
   status = qtrue;
  }
 }

 return status;
}
