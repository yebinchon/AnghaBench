
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ lastchat_time; scalar_t__ lastkilledplayer; scalar_t__ client; scalar_t__ enemydeathtype; scalar_t__ botdeathtype; int character; int cs; int chatto; } ;
typedef TYPE_1__ bot_state_t ;
struct TYPE_11__ {int integer; } ;
struct TYPE_10__ {scalar_t__ integer; } ;


 int BotAI_BotInitialChat (TYPE_1__*,char*,char*,int *) ;
 int BotNumActivePlayers () ;
 scalar_t__ BotSameTeam (TYPE_1__*,scalar_t__) ;
 int BotValidChatPosition (TYPE_1__*) ;
 scalar_t__ BotVisibleEnemies (TYPE_1__*) ;
 int CHARACTERISTIC_CHAT_INSULT ;
 int CHARACTERISTIC_CHAT_KILL ;
 int CHAT_ALL ;
 int CHAT_TEAM ;
 int EasyClientName (scalar_t__,char*,int) ;
 scalar_t__ FloatTime () ;
 scalar_t__ GT_TOURNAMENT ;
 scalar_t__ MOD_GAUNTLET ;
 scalar_t__ MOD_KAMIKAZE ;
 scalar_t__ MOD_RAILGUN ;
 scalar_t__ MOD_TELEFRAG ;
 scalar_t__ TIME_BETWEENCHATTING ;
 scalar_t__ TeamPlayIsOn () ;
 TYPE_3__ bot_fastchat ;
 TYPE_2__ bot_nochat ;
 scalar_t__ gametype ;
 int qfalse ;
 int qtrue ;
 float random () ;
 scalar_t__ trap_BotNumInitialChats (int ,char*) ;
 float trap_Characteristic_BFloat (int ,int ,int ,int) ;
 int trap_EA_Command (scalar_t__,char*) ;

int BotChat_Kill(bot_state_t *bs) {
 char name[32];
 float rnd;

 if (bot_nochat.integer) return qfalse;
 if (bs->lastchat_time > FloatTime() - TIME_BETWEENCHATTING) return qfalse;
 rnd = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_CHAT_KILL, 0, 1);

 if (gametype == GT_TOURNAMENT) return qfalse;

 if (!bot_fastchat.integer) {
  if (random() > rnd) return qfalse;
 }
 if (bs->lastkilledplayer == bs->client) return qfalse;
 if (BotNumActivePlayers() <= 1) return qfalse;
 if (!BotValidChatPosition(bs)) return qfalse;

 if (BotVisibleEnemies(bs)) return qfalse;

 EasyClientName(bs->lastkilledplayer, name, 32);

 bs->chatto = CHAT_ALL;
 if (TeamPlayIsOn() && BotSameTeam(bs, bs->lastkilledplayer)) {
  BotAI_BotInitialChat(bs, "kill_teammate", name, ((void*)0));
  bs->chatto = CHAT_TEAM;
 }
 else
 {

  if (TeamPlayIsOn()) {
   trap_EA_Command(bs->client, "vtaunt");
   return qfalse;
  }

  if (bs->enemydeathtype == MOD_GAUNTLET) {
   BotAI_BotInitialChat(bs, "kill_gauntlet", name, ((void*)0));
  }
  else if (bs->enemydeathtype == MOD_RAILGUN) {
   BotAI_BotInitialChat(bs, "kill_rail", name, ((void*)0));
  }
  else if (bs->enemydeathtype == MOD_TELEFRAG) {
   BotAI_BotInitialChat(bs, "kill_telefrag", name, ((void*)0));
  }





  else if (random() < trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_CHAT_INSULT, 0, 1)) {
   BotAI_BotInitialChat(bs, "kill_insult", name, ((void*)0));
  }
  else {
   BotAI_BotInitialChat(bs, "kill_praise", name, ((void*)0));
  }
 }
 bs->lastchat_time = FloatTime();
 return qtrue;
}
