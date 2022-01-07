
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int client; scalar_t__ inuse; } ;


 int BotAIShutdownClient (int ,int) ;
 int MAX_CLIENTS ;
 TYPE_1__** botstates ;
 int qtrue ;
 int trap_BotLibShutdown () ;

int BotAIShutdown( int restart ) {

 int i;


 if ( restart ) {

  for (i = 0; i < MAX_CLIENTS; i++) {
   if (botstates[i] && botstates[i]->inuse) {
    BotAIShutdownClient(botstates[i]->client, restart);
   }
  }

 }
 else {
  trap_BotLibShutdown();
 }
 return qtrue;
}
