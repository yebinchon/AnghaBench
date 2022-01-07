
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int playerState_t ;
struct TYPE_5__ {TYPE_1__* client; int inuse; } ;
typedef TYPE_2__ gentity_t ;
struct TYPE_4__ {int ps; } ;


 TYPE_2__* g_entities ;
 int memcpy (int *,int *,int) ;
 int qfalse ;
 int qtrue ;

int BotAI_GetClientState( int clientNum, playerState_t *state ) {
 gentity_t *ent;

 ent = &g_entities[clientNum];
 if ( !ent->inuse ) {
  return qfalse;
 }
 if ( !ent->client ) {
  return qfalse;
 }

 memcpy( state, &ent->client->ps, sizeof(playerState_t) );
 return qtrue;
}
