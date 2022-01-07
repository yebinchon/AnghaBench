
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_12__ {int* trBase; } ;
struct TYPE_14__ {scalar_t__ number; TYPE_1__ pos; } ;
typedef TYPE_3__ entityState_t ;
struct TYPE_15__ {double fraction; scalar_t__ ent; } ;
typedef TYPE_4__ bsp_trace_t ;
struct TYPE_13__ {int weapon; } ;
struct TYPE_16__ {scalar_t__ blockedbyavoidspot_time; int numproxmines; scalar_t__* inventory; int client; int entitynum; int eye; int viewangles; TYPE_2__ cur_ps; scalar_t__* proxmines; int origin; scalar_t__ kamikazebody; } ;
typedef TYPE_5__ bot_state_t ;
struct TYPE_17__ {int flags; int weapon; int ideal_viewangles; } ;
typedef TYPE_6__ bot_moveresult_t ;


 int BotAI_GetEntityState (scalar_t__,TYPE_3__*) ;
 int BotAI_Trace (TYPE_4__*,int ,int *,int *,int*,int ,int ) ;
 int BotSelectActivateWeapon (TYPE_5__*) ;
 scalar_t__ FloatTime () ;
 size_t INVENTORY_BFG10K ;
 size_t INVENTORY_BFGAMMO ;
 size_t INVENTORY_CELLS ;
 size_t INVENTORY_PLASMAGUN ;
 size_t INVENTORY_ROCKETLAUNCHER ;
 size_t INVENTORY_ROCKETS ;
 scalar_t__ InFieldOfVision (int ,int,int ) ;
 int MASK_SHOT ;
 int MOVERESULT_BLOCKEDBYAVOIDSPOT ;
 int MOVERESULT_MOVEMENTVIEW ;
 int MOVERESULT_MOVEMENTWEAPON ;
 int VectorCopy (int*,int*) ;
 float VectorLength (int*) ;
 int VectorSubtract (int*,int ,int*) ;
 int WEAPONINDEX_BFG ;
 int WEAPONINDEX_PLASMAGUN ;
 int WEAPONINDEX_ROCKET_LAUNCHER ;
 int trap_EA_Attack (int ) ;
 int vectoangles (int*,int ) ;

void BotClearPath(bot_state_t *bs, bot_moveresult_t *moveresult) {
 int i, bestmine;
 float dist, bestdist;
 vec3_t target, dir;
 bsp_trace_t bsptrace;
 entityState_t state;


 if (bs->kamikazebody) {

  if ( !(moveresult->flags & (MOVERESULT_MOVEMENTVIEW | MOVERESULT_MOVEMENTWEAPON)) ) {

   BotAI_GetEntityState(bs->kamikazebody, &state);
   VectorCopy(state.pos.trBase, target);
   target[2] += 8;
   VectorSubtract(target, bs->eye, dir);
   vectoangles(dir, moveresult->ideal_viewangles);

   moveresult->weapon = BotSelectActivateWeapon(bs);
   if (moveresult->weapon == -1) {

    moveresult->weapon = 0;
   }
   if (moveresult->weapon) {

    moveresult->flags |= MOVERESULT_MOVEMENTWEAPON | MOVERESULT_MOVEMENTVIEW;

    if (bs->cur_ps.weapon == moveresult->weapon) {

     if (InFieldOfVision(bs->viewangles, 20, moveresult->ideal_viewangles)) {

      BotAI_Trace(&bsptrace, bs->eye, ((void*)0), ((void*)0), target, bs->entitynum, MASK_SHOT);

      if (bsptrace.fraction >= 1.0 || bsptrace.ent == state.number) {

       trap_EA_Attack(bs->client);
      }
     }
    }
   }
  }
 }
 if (moveresult->flags & MOVERESULT_BLOCKEDBYAVOIDSPOT) {
  bs->blockedbyavoidspot_time = FloatTime() + 5;
 }

 if (bs->blockedbyavoidspot_time > FloatTime() &&
  !(moveresult->flags & (MOVERESULT_MOVEMENTVIEW | MOVERESULT_MOVEMENTWEAPON)) ) {
  bestdist = 300;
  bestmine = -1;
  for (i = 0; i < bs->numproxmines; i++) {
   BotAI_GetEntityState(bs->proxmines[i], &state);
   VectorSubtract(state.pos.trBase, bs->origin, dir);
   dist = VectorLength(dir);
   if (dist < bestdist) {
    bestdist = dist;
    bestmine = i;
   }
  }
  if (bestmine != -1) {





   BotAI_GetEntityState(bs->proxmines[bestmine], &state);
   VectorCopy(state.pos.trBase, target);
   target[2] += 2;
   VectorSubtract(target, bs->eye, dir);
   vectoangles(dir, moveresult->ideal_viewangles);

   if (bs->inventory[INVENTORY_PLASMAGUN] > 0 && bs->inventory[INVENTORY_CELLS] > 0)
    moveresult->weapon = WEAPONINDEX_PLASMAGUN;
   else if (bs->inventory[INVENTORY_ROCKETLAUNCHER] > 0 && bs->inventory[INVENTORY_ROCKETS] > 0)
    moveresult->weapon = WEAPONINDEX_ROCKET_LAUNCHER;
   else if (bs->inventory[INVENTORY_BFG10K] > 0 && bs->inventory[INVENTORY_BFGAMMO] > 0)
    moveresult->weapon = WEAPONINDEX_BFG;
   else {
    moveresult->weapon = 0;
   }
   if (moveresult->weapon) {

    moveresult->flags |= MOVERESULT_MOVEMENTWEAPON | MOVERESULT_MOVEMENTVIEW;

    if (bs->cur_ps.weapon == moveresult->weapon) {

     if (InFieldOfVision(bs->viewangles, 20, moveresult->ideal_viewangles)) {

      BotAI_Trace(&bsptrace, bs->eye, ((void*)0), ((void*)0), target, bs->entitynum, MASK_SHOT);

      if (bsptrace.fraction >= 1.0 || bsptrace.ent == state.number) {

       trap_EA_Attack(bs->client);
      }
     }
    }
   }
  }
 }
}
