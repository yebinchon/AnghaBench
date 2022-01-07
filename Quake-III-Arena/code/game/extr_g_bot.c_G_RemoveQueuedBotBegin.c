
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int clientNum; scalar_t__ spawnTime; } ;


 int BOT_SPAWN_QUEUE_DEPTH ;
 TYPE_1__* botSpawnQueue ;

void G_RemoveQueuedBotBegin( int clientNum ) {
 int n;

 for( n = 0; n < BOT_SPAWN_QUEUE_DEPTH; n++ ) {
  if( botSpawnQueue[n].clientNum == clientNum ) {
   botSpawnQueue[n].spawnTime = 0;
   return;
  }
 }
}
