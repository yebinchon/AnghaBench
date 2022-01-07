
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_12__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct TYPE_23__ {int damagetype; int radius; double damage; } ;
struct TYPE_24__ {int* offset; int flags; TYPE_4__ proj; } ;
typedef TYPE_5__ weaponinfo_t ;
typedef int* vec3_t ;
struct TYPE_25__ {int fraction; int ent; } ;
typedef TYPE_6__ bsp_trace_t ;
struct TYPE_22__ {scalar_t__ viewheight; } ;
struct TYPE_26__ {int enemy; float enemysight_time; float teleport_time; double weaponchange_time; int firethrottlewait_time; int firethrottleshoot_time; int* aimtarget; int* eye; scalar_t__ weaponnum; int flags; int client; int entitynum; int viewangles; TYPE_3__ cur_ps; int origin; int ws; int character; } ;
typedef TYPE_7__ bot_state_t ;
struct TYPE_27__ {size_t number; } ;
typedef TYPE_8__ aas_entityinfo_t ;
struct TYPE_20__ {int frame; } ;
struct TYPE_21__ {TYPE_1__ s; } ;
struct TYPE_19__ {size_t entitynum; } ;
struct TYPE_18__ {TYPE_2__* activator; } ;
struct TYPE_17__ {size_t entitynum; } ;


 int AngleVectors (int ,int*,int*,int *) ;
 int BFL_ATTACKED ;
 int BotAI_Trace (TYPE_6__*,int*,int*,int*,int*,int ,int) ;
 int BotEntityInfo (int,TYPE_8__*) ;
 scalar_t__ BotSameTeam (TYPE_7__*,int) ;
 int CHARACTERISTIC_FIRETHROTTLE ;
 int CHARACTERISTIC_REACTIONTIME ;
 int CONTENTS_PLAYERCLIP ;
 int CONTENTS_SOLID ;
 int DAMAGETYPE_RADIAL ;
 int FloatTime () ;
 int InFieldOfVision (int ,float,int*) ;
 int MASK_SHOT ;
 int MAX_CLIENTS ;
 scalar_t__ Square (int) ;
 int VectorCopy (int ,int*) ;
 scalar_t__ VectorLengthSquared (int*) ;
 int VectorMA (int*,int,int*,int*) ;
 int VectorSubtract (int*,int*,int*) ;
 int WFL_FIRERELEASED ;
 scalar_t__ WP_GAUNTLET ;
 TYPE_12__ blueobelisk ;
 TYPE_11__* g_entities ;
 float random () ;
 TYPE_10__ redobelisk ;
 int trap_BotGetWeaponInfo (int ,scalar_t__,TYPE_5__*) ;
 float trap_Characteristic_BFloat (int ,int ,int ,int) ;
 int trap_EA_Attack (int ) ;
 int vectoangles (int*,int*) ;

void BotCheckAttack(bot_state_t *bs) {
 float points, reactiontime, fov, firethrottle;
 int attackentity;
 bsp_trace_t bsptrace;

 vec3_t forward, right, start, end, dir, angles;
 weaponinfo_t wi;
 bsp_trace_t trace;
 aas_entityinfo_t entinfo;
 vec3_t mins = {-8, -8, -8}, maxs = {8, 8, 8};

 attackentity = bs->enemy;

 BotEntityInfo(attackentity, &entinfo);

 if (attackentity >= MAX_CLIENTS) {
 }

 reactiontime = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_REACTIONTIME, 0, 1);
 if (bs->enemysight_time > FloatTime() - reactiontime) return;
 if (bs->teleport_time > FloatTime() - reactiontime) return;

 if (bs->weaponchange_time > FloatTime() - 0.1) return;

 if (bs->firethrottlewait_time > FloatTime()) return;
 firethrottle = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_FIRETHROTTLE, 0, 1);
 if (bs->firethrottleshoot_time < FloatTime()) {
  if (random() > firethrottle) {
   bs->firethrottlewait_time = FloatTime() + firethrottle;
   bs->firethrottleshoot_time = 0;
  }
  else {
   bs->firethrottleshoot_time = FloatTime() + 1 - firethrottle;
   bs->firethrottlewait_time = 0;
  }
 }


 VectorSubtract(bs->aimtarget, bs->eye, dir);

 if (bs->weaponnum == WP_GAUNTLET) {
  if (VectorLengthSquared(dir) > Square(60)) {
   return;
  }
 }
 if (VectorLengthSquared(dir) < Square(100))
  fov = 120;
 else
  fov = 50;

 vectoangles(dir, angles);
 if (!InFieldOfVision(bs->viewangles, fov, angles))
  return;
 BotAI_Trace(&bsptrace, bs->eye, ((void*)0), ((void*)0), bs->aimtarget, bs->client, CONTENTS_SOLID|CONTENTS_PLAYERCLIP);
 if (bsptrace.fraction < 1 && bsptrace.ent != attackentity)
  return;


 trap_BotGetWeaponInfo(bs->ws, bs->weaponnum, &wi);

 VectorCopy(bs->origin, start);
 start[2] += bs->cur_ps.viewheight;
 AngleVectors(bs->viewangles, forward, right, ((void*)0));
 start[0] += forward[0] * wi.offset[0] + right[0] * wi.offset[1];
 start[1] += forward[1] * wi.offset[0] + right[1] * wi.offset[1];
 start[2] += forward[2] * wi.offset[0] + right[2] * wi.offset[1] + wi.offset[2];

 VectorMA(start, 1000, forward, end);

 VectorMA(start, -12, forward, start);
 BotAI_Trace(&trace, start, mins, maxs, end, bs->entitynum, MASK_SHOT);

 if (trace.ent > 0 && trace.ent <= MAX_CLIENTS) {
  if (trace.ent != attackentity) {

   if (BotSameTeam(bs, trace.ent))
    return;
  }
 }

 if (trace.ent != attackentity || attackentity >= MAX_CLIENTS) {

  if (wi.proj.damagetype & DAMAGETYPE_RADIAL) {
   if (trace.fraction * 1000 < wi.proj.radius) {
    points = (wi.proj.damage - 0.5 * trace.fraction * 1000) * 0.5;
    if (points > 0) {
     return;
    }
   }

  }
 }

 if (wi.flags & WFL_FIRERELEASED) {
  if (bs->flags & BFL_ATTACKED) {
   trap_EA_Attack(bs->client);
  }
 }
 else {
  trap_EA_Attack(bs->client);
 }
 bs->flags ^= BFL_ATTACKED;
}
