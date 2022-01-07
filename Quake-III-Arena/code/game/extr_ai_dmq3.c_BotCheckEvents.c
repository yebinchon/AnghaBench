
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {size_t number; scalar_t__ eType; scalar_t__ event; int otherEntityNum; int otherEntityNum2; int eventParm; int origin; } ;
typedef TYPE_1__ entityState_t ;
typedef int buf ;
struct TYPE_13__ {scalar_t__* entityeventTime; int client; int botdeathtype; int lastkilledby; int enemydeathtype; int lastkilledplayer; int enemy; int neutralflagstatus; int blueflagstatus; int redflagstatus; int * inventory; void* flagstatuschanged; void* enemysuicide; int num_kills; void* killedenemy_time; int num_deaths; void* botsuicide; } ;
typedef TYPE_2__ bot_state_t ;
struct TYPE_14__ {int powerups; } ;
typedef TYPE_3__ aas_entityinfo_t ;
struct TYPE_15__ {scalar_t__ eventTime; } ;


 int BotAI_Print (int ,char*,int) ;
 int BotDontAvoid (TYPE_2__*,char*) ;
 int BotEntityInfo (int,TYPE_3__*) ;
 int BotGoForPowerups (TYPE_2__*) ;
 int BotSameTeam (TYPE_2__*,int) ;
 int BotTeam (TYPE_2__*) ;
 int CS_SOUNDS ;
 int ENTITYNUM_NONE ;
 int ENTITYNUM_WORLD ;
 scalar_t__ ET_EVENTS ;

 scalar_t__ EV_EVENT_BITS ;
 void* FloatTime () ;






 int GT_1FCTF ;
 int GT_CTF ;
 size_t INVENTORY_TELEPORTER ;
 int MAX_SOUNDS ;
 int PRT_ERROR ;
 int PW_NEUTRALFLAG ;
 int TEAM_BLUE ;
 int TEAM_RED ;
 int VectorCopy (int ,int ) ;
 TYPE_4__* g_entities ;
 int gametype ;
 int lastteleport_origin ;
 void* lastteleport_time ;
 void* qfalse ;
 void* qtrue ;
 int strcmp (char*,char*) ;
 int trap_EA_Use (size_t) ;
 int trap_GetConfigstring (int,char*,int) ;

void BotCheckEvents(bot_state_t *bs, entityState_t *state) {
 int event;
 char buf[128];






 if (bs->entityeventTime[state->number] == g_entities[state->number].eventTime) {
  return;
 }
 bs->entityeventTime[state->number] = g_entities[state->number].eventTime;

 if (state->eType > ET_EVENTS) {
  event = (state->eType - ET_EVENTS) & ~EV_EVENT_BITS;
 }
 else {
  event = state->event & ~EV_EVENT_BITS;
 }

 switch(event) {

  case 160:
  {
   int target, attacker, mod;

   target = state->otherEntityNum;
   attacker = state->otherEntityNum2;
   mod = state->eventParm;

   if (target == bs->client) {
    bs->botdeathtype = mod;
    bs->lastkilledby = attacker;

    if (target == attacker ||
     target == ENTITYNUM_NONE ||
     target == ENTITYNUM_WORLD) bs->botsuicide = qtrue;
    else bs->botsuicide = qfalse;

    bs->num_deaths++;
   }

   else if (attacker == bs->client) {
    bs->enemydeathtype = mod;
    bs->lastkilledplayer = target;
    bs->killedenemy_time = FloatTime();

    bs->num_kills++;
   }
   else if (attacker == bs->enemy && target == attacker) {
    bs->enemysuicide = qtrue;
   }
   break;
  }
  case 166:
  {
   if (state->eventParm < 0 || state->eventParm > MAX_SOUNDS) {
    BotAI_Print(PRT_ERROR, "EV_GLOBAL_SOUND: eventParm (%d) out of range\n", state->eventParm);
    break;
   }
   trap_GetConfigstring(CS_SOUNDS + state->eventParm, buf, sizeof(buf));
    if (!strcmp(buf, "sound/items/poweruprespawn.wav")) {

    BotGoForPowerups(bs);
   }
   break;
  }
  case 165:
  {
   if (gametype == GT_CTF) {
    switch(state->eventParm) {
     case 130:
      bs->blueflagstatus = 0;
      bs->redflagstatus = 0;
      bs->flagstatuschanged = qtrue;
      break;
     case 133:
      bs->blueflagstatus = 0;
      bs->redflagstatus = 0;
      bs->flagstatuschanged = qtrue;
      break;
     case 129:

      bs->blueflagstatus = 0;
      bs->flagstatuschanged = qtrue;
      break;
     case 132:

      bs->redflagstatus = 0;
      bs->flagstatuschanged = qtrue;
      break;
     case 128:

      bs->blueflagstatus = 1;
      bs->flagstatuschanged = qtrue;
      break;
     case 131:

      bs->redflagstatus = 1;
      bs->flagstatuschanged = qtrue;
      break;
    }
   }
   break;
  }
  case 159:
  {
   VectorCopy(state->origin, lastteleport_origin);
   lastteleport_time = FloatTime();
   break;
  }
  case 168:
  {

   if (state->number == bs->client) {
    if (state->eventParm < 0 || state->eventParm > MAX_SOUNDS) {
     BotAI_Print(PRT_ERROR, "EV_GENERAL_SOUND: eventParm (%d) out of range\n", state->eventParm);
     break;
    }

    trap_GetConfigstring(CS_SOUNDS + state->eventParm, buf, sizeof(buf));

    if (!strcmp(buf, "*falling1.wav")) {

     if (bs->inventory[INVENTORY_TELEPORTER] > 0) {

      trap_EA_Use(bs->client);
     }
    }
   }
   break;
  }
  case 171:
  case 170:
  case 172:
  case 169:
  case 154:
  case 174:
  case 175:
  case 176:
  case 156:
  case 155:
  case 158:
  case 157:
  case 162:
  case 163:
  case 153:
  case 135:
  case 136:
  case 134:
  case 137:
  case 164:
  case 167:
  case 161:
  case 177:
  case 173:

   break;
  case 152:
  case 151:
  case 145:
  case 144:
  case 143:
  case 142:
  case 141:
  case 140:
  case 139:
  case 138:
  case 150:
  case 149:
  case 148:
  case 147:
  case 146:
   break;
 }
}
