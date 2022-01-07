
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int think; scalar_t__ nextthink; } ;
typedef TYPE_3__ gentity_t ;
struct TYPE_14__ {size_t* sortedClients; int numNonSpectatorClients; TYPE_2__* clients; scalar_t__ time; } ;
struct TYPE_11__ {int* persistant; } ;
struct TYPE_12__ {TYPE_1__ ps; } ;


 int CelebrateStart ;
 size_t PERS_RANK ;
 int RANK_TIED_FLAG ;
 TYPE_3__* SpawnModelOnVictoryPad (TYPE_3__*,int ,int *,int) ;
 TYPE_3__* SpawnPodium () ;
 int * g_entities ;
 TYPE_7__ level ;
 int offsetFirst ;
 int offsetSecond ;
 int offsetThird ;
 TYPE_3__* podium1 ;
 TYPE_3__* podium2 ;
 TYPE_3__* podium3 ;

void SpawnModelsOnVictoryPads( void ) {
 gentity_t *player;
 gentity_t *podium;

 podium1 = ((void*)0);
 podium2 = ((void*)0);
 podium3 = ((void*)0);

 podium = SpawnPodium();

 player = SpawnModelOnVictoryPad( podium, offsetFirst, &g_entities[level.sortedClients[0]],
    level.clients[ level.sortedClients[0] ].ps.persistant[PERS_RANK] &~ RANK_TIED_FLAG );
 if ( player ) {
  player->nextthink = level.time + 2000;
  player->think = CelebrateStart;
  podium1 = player;
 }

 player = SpawnModelOnVictoryPad( podium, offsetSecond, &g_entities[level.sortedClients[1]],
    level.clients[ level.sortedClients[1] ].ps.persistant[PERS_RANK] &~ RANK_TIED_FLAG );
 if ( player ) {
  podium2 = player;
 }

 if ( level.numNonSpectatorClients > 2 ) {
  player = SpawnModelOnVictoryPad( podium, offsetThird, &g_entities[level.sortedClients[2]],
    level.clients[ level.sortedClients[2] ].ps.persistant[PERS_RANK] &~ RANK_TIED_FLAG );
  if ( player ) {
   podium3 = player;
  }
 }
}
