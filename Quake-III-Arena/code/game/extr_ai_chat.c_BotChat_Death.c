
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ lastchat_time; scalar_t__ lastkilledby; scalar_t__ client; scalar_t__ botdeathtype; int chatto; int character; int cs; scalar_t__ botsuicide; } ;
typedef TYPE_1__ bot_state_t ;
struct TYPE_10__ {int integer; } ;
struct TYPE_9__ {scalar_t__ integer; } ;


 int BotAI_BotInitialChat (TYPE_1__*,char*,char*,int ,...) ;
 int BotNumActivePlayers () ;
 int BotRandomOpponentName (TYPE_1__*) ;
 scalar_t__ BotSameTeam (TYPE_1__*,scalar_t__) ;
 int BotWeaponNameForMeansOfDeath (scalar_t__) ;
 int CHARACTERISTIC_CHAT_DEATH ;
 int CHARACTERISTIC_CHAT_INSULT ;
 int CHAT_ALL ;
 int CHAT_TEAM ;
 int EasyClientName (scalar_t__,char*,int) ;
 scalar_t__ FloatTime () ;
 scalar_t__ GT_TOURNAMENT ;
 scalar_t__ MAX_CLIENTS ;
 scalar_t__ MOD_BFG ;
 scalar_t__ MOD_BFG_SPLASH ;
 scalar_t__ MOD_CRUSH ;
 scalar_t__ MOD_FALLING ;
 scalar_t__ MOD_GAUNTLET ;
 scalar_t__ MOD_KAMIKAZE ;
 scalar_t__ MOD_LAVA ;
 scalar_t__ MOD_RAILGUN ;
 scalar_t__ MOD_SLIME ;
 scalar_t__ MOD_SUICIDE ;
 scalar_t__ MOD_TARGET_LASER ;
 scalar_t__ MOD_TELEFRAG ;
 scalar_t__ MOD_TRIGGER_HURT ;
 scalar_t__ MOD_UNKNOWN ;
 scalar_t__ MOD_WATER ;
 scalar_t__ TIME_BETWEENCHATTING ;
 scalar_t__ TeamPlayIsOn () ;
 TYPE_3__ bot_fastchat ;
 TYPE_2__ bot_nochat ;
 scalar_t__ gametype ;
 int qfalse ;
 int qtrue ;
 double random () ;
 int strcpy (char*,char*) ;
 scalar_t__ trap_BotNumInitialChats (int ,char*) ;
 double trap_Characteristic_BFloat (int ,int ,int ,int) ;
 int trap_EA_Command (scalar_t__,char*) ;

int BotChat_Death(bot_state_t *bs) {
 char name[32];
 float rnd;

 if (bot_nochat.integer) return qfalse;
 if (bs->lastchat_time > FloatTime() - TIME_BETWEENCHATTING) return qfalse;
 rnd = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_CHAT_DEATH, 0, 1);

 if (gametype == GT_TOURNAMENT) return qfalse;

 if (!bot_fastchat.integer) {
  if (random() > rnd) return qfalse;
 }
 if (BotNumActivePlayers() <= 1) return qfalse;

 if (bs->lastkilledby >= 0 && bs->lastkilledby < MAX_CLIENTS)
  EasyClientName(bs->lastkilledby, name, 32);
 else
  strcpy(name, "[world]");

 if (TeamPlayIsOn() && BotSameTeam(bs, bs->lastkilledby)) {
  if (bs->lastkilledby == bs->client) return qfalse;
  BotAI_BotInitialChat(bs, "death_teammate", name, ((void*)0));
  bs->chatto = CHAT_TEAM;
 }
 else
 {

  if (TeamPlayIsOn()) {
   trap_EA_Command(bs->client, "vtaunt");
   return qtrue;
  }

  if (bs->botdeathtype == MOD_WATER)
   BotAI_BotInitialChat(bs, "death_drown", BotRandomOpponentName(bs), ((void*)0));
  else if (bs->botdeathtype == MOD_SLIME)
   BotAI_BotInitialChat(bs, "death_slime", BotRandomOpponentName(bs), ((void*)0));
  else if (bs->botdeathtype == MOD_LAVA)
   BotAI_BotInitialChat(bs, "death_lava", BotRandomOpponentName(bs), ((void*)0));
  else if (bs->botdeathtype == MOD_FALLING)
   BotAI_BotInitialChat(bs, "death_cratered", BotRandomOpponentName(bs), ((void*)0));
  else if (bs->botsuicide ||
    bs->botdeathtype == MOD_CRUSH ||
    bs->botdeathtype == MOD_SUICIDE ||
    bs->botdeathtype == MOD_TARGET_LASER ||
    bs->botdeathtype == MOD_TRIGGER_HURT ||
    bs->botdeathtype == MOD_UNKNOWN)
   BotAI_BotInitialChat(bs, "death_suicide", BotRandomOpponentName(bs), ((void*)0));
  else if (bs->botdeathtype == MOD_TELEFRAG)
   BotAI_BotInitialChat(bs, "death_telefrag", name, ((void*)0));




  else {
   if ((bs->botdeathtype == MOD_GAUNTLET ||
    bs->botdeathtype == MOD_RAILGUN ||
    bs->botdeathtype == MOD_BFG ||
    bs->botdeathtype == MOD_BFG_SPLASH) && random() < 0.5) {

    if (bs->botdeathtype == MOD_GAUNTLET)
     BotAI_BotInitialChat(bs, "death_gauntlet",
       name,
       BotWeaponNameForMeansOfDeath(bs->botdeathtype),
       ((void*)0));
    else if (bs->botdeathtype == MOD_RAILGUN)
     BotAI_BotInitialChat(bs, "death_rail",
       name,
       BotWeaponNameForMeansOfDeath(bs->botdeathtype),
       ((void*)0));
    else
     BotAI_BotInitialChat(bs, "death_bfg",
       name,
       BotWeaponNameForMeansOfDeath(bs->botdeathtype),
       ((void*)0));
   }

   else if (random() < trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_CHAT_INSULT, 0, 1)) {
    BotAI_BotInitialChat(bs, "death_insult",
       name,
       BotWeaponNameForMeansOfDeath(bs->botdeathtype),
       ((void*)0));
   }
   else {
    BotAI_BotInitialChat(bs, "death_praise",
       name,
       BotWeaponNameForMeansOfDeath(bs->botdeathtype),
       ((void*)0));
   }
  }
  bs->chatto = CHAT_ALL;
 }
 bs->lastchat_time = FloatTime();
 return qtrue;
}
