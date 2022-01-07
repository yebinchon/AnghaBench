
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_15__ ;


struct TYPE_18__ {int eFlags; } ;
struct TYPE_21__ {size_t health; TYPE_2__* client; TYPE_15__ s; } ;
typedef TYPE_3__ gentity_t ;
typedef int clientPersistant_t ;
struct TYPE_26__ {scalar_t__* powerups; size_t* stats; scalar_t__ pm_type; int commandTime; int viewangles; } ;
struct TYPE_25__ {size_t giTag; } ;
struct TYPE_24__ {scalar_t__ integer; } ;
struct TYPE_23__ {int integer; } ;
struct TYPE_22__ {scalar_t__ time; scalar_t__ intermissiontime; } ;
struct TYPE_19__ {scalar_t__ sessionTeam; } ;
struct TYPE_20__ {scalar_t__ invulnerabilityTime; int lastCmdTime; TYPE_9__ ps; int pers; TYPE_1__ sess; } ;


 int BG_PlayerStateToEntityState (TYPE_9__*,TYPE_15__*,int ) ;
 int BG_PlayerStateToEntityStateExtraPolate (TYPE_9__*,TYPE_15__*,int ,int ) ;
 int EF_CONNECTION ;
 int G_SetClientSound (TYPE_3__*) ;
 int MAX_POWERUPS ;
 scalar_t__ PM_NORMAL ;
 size_t PW_AMMOREGEN ;
 size_t PW_DOUBLER ;
 size_t PW_GUARD ;
 size_t PW_INVULNERABILITY ;
 size_t PW_SCOUT ;
 int P_DamageFeedback (TYPE_3__*) ;
 int P_WorldEffects (TYPE_3__*) ;
 size_t STAT_HEALTH ;
 size_t STAT_PERSISTANT_POWERUP ;
 int SendPendingPredictableEvents (TYPE_9__*) ;
 int SpectatorClientEndFrame (TYPE_3__*) ;
 scalar_t__ TEAM_SPECTATOR ;
 int VectorClear (int ) ;
 TYPE_7__* bg_itemlist ;
 TYPE_6__ g_smoothClients ;
 TYPE_5__* g_synchronousClients ;
 TYPE_4__ level ;
 int qtrue ;

void ClientEndFrame( gentity_t *ent ) {
 int i;
 clientPersistant_t *pers;

 if ( ent->client->sess.sessionTeam == TEAM_SPECTATOR ) {
  SpectatorClientEndFrame( ent );
  return;
 }

 pers = &ent->client->pers;


 for ( i = 0 ; i < MAX_POWERUPS ; i++ ) {
  if ( ent->client->ps.powerups[ i ] < level.time ) {
   ent->client->ps.powerups[ i ] = 0;
  }
 }
 if ( level.intermissiontime ) {
  return;
 }


 P_WorldEffects (ent);


 P_DamageFeedback (ent);


 if ( level.time - ent->client->lastCmdTime > 1000 ) {
  ent->s.eFlags |= EF_CONNECTION;
 } else {
  ent->s.eFlags &= ~EF_CONNECTION;
 }

 ent->client->ps.stats[STAT_HEALTH] = ent->health;

 G_SetClientSound (ent);


 if (g_smoothClients.integer) {
  BG_PlayerStateToEntityStateExtraPolate( &ent->client->ps, &ent->s, ent->client->ps.commandTime, qtrue );
 }
 else {
  BG_PlayerStateToEntityState( &ent->client->ps, &ent->s, qtrue );
 }
 SendPendingPredictableEvents( &ent->client->ps );




}
