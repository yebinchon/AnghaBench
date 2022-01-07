
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int eventParm; int event; } ;
typedef TYPE_2__ entityState_t ;
struct TYPE_15__ {int externalEventParm; int externalEvent; } ;
struct TYPE_17__ {TYPE_1__ cur_ps; int client; scalar_t__ numproxmines; scalar_t__ kamikazebody; int ms; } ;
typedef TYPE_3__ bot_state_t ;


 int AVOID_CLEAR ;
 int BotAI_GetEntityState (int ,TYPE_2__*) ;
 int BotAI_GetSnapshotEntity (int ,int,TYPE_2__*) ;
 int BotCheckEvents (TYPE_3__*,TYPE_2__*) ;
 int BotCheckForGrenades (TYPE_3__*,TYPE_2__*) ;
 int BotCheckForKamikazeBody (TYPE_3__*,TYPE_2__*) ;
 int BotCheckForProxMines (TYPE_3__*,TYPE_2__*) ;
 int trap_BotAddAvoidSpot (int ,int ,int ,int ) ;
 int vec3_origin ;

void BotCheckSnapshot(bot_state_t *bs) {
 int ent;
 entityState_t state;


 trap_BotAddAvoidSpot(bs->ms, vec3_origin, 0, AVOID_CLEAR);

 bs->kamikazebody = 0;

 bs->numproxmines = 0;

 ent = 0;
 while( ( ent = BotAI_GetSnapshotEntity( bs->client, ent, &state ) ) != -1 ) {

  BotCheckEvents(bs, &state);

  BotCheckForGrenades(bs, &state);







 }

 BotAI_GetEntityState(bs->client, &state);

 state.event = bs->cur_ps.externalEvent;
 state.eventParm = bs->cur_ps.externalEventParm;

 BotCheckEvents(bs, &state);
}
