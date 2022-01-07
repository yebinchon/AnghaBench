
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ lastchat_time; int chatto; int client; int character; } ;
typedef TYPE_1__ bot_state_t ;
struct TYPE_12__ {int integer; } ;
struct TYPE_11__ {scalar_t__ integer; } ;


 int BotAI_BotInitialChat (TYPE_1__*,char*,int ,int ,char*,char*,int ,int *) ;
 char* BotFirstClientInRankings () ;
 scalar_t__ BotIsFirstInRankings (TYPE_1__*) ;
 scalar_t__ BotIsLastInRankings (TYPE_1__*) ;
 scalar_t__ BotIsObserver (TYPE_1__*) ;
 char* BotLastClientInRankings () ;
 int BotMapTitle () ;
 int BotNumActivePlayers () ;
 int BotRandomOpponentName (TYPE_1__*) ;
 int CHARACTERISTIC_CHAT_STARTENDLEVEL ;
 int CHAT_ALL ;
 int EasyClientName (int ,char*,int) ;
 scalar_t__ FloatTime () ;
 scalar_t__ GT_TOURNAMENT ;
 scalar_t__ TIME_BETWEENCHATTING ;
 scalar_t__ TeamPlayIsOn () ;
 TYPE_3__ bot_fastchat ;
 TYPE_2__ bot_nochat ;
 scalar_t__ gametype ;
 int qfalse ;
 int qtrue ;
 float random () ;
 float trap_Characteristic_BFloat (int ,int ,int ,int) ;
 int trap_EA_Command (int ,char*) ;

int BotChat_EndLevel(bot_state_t *bs) {
 char name[32];
 float rnd;

 if (bot_nochat.integer) return qfalse;
 if (BotIsObserver(bs)) return qfalse;
 if (bs->lastchat_time > FloatTime() - TIME_BETWEENCHATTING) return qfalse;

 if (TeamPlayIsOn())
 {
  if (BotIsFirstInRankings(bs)) {
   trap_EA_Command(bs->client, "vtaunt");
  }
  return qtrue;
 }

 if (gametype == GT_TOURNAMENT) return qfalse;
 rnd = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_CHAT_STARTENDLEVEL, 0, 1);
 if (!bot_fastchat.integer) {
  if (random() > rnd) return qfalse;
 }
 if (BotNumActivePlayers() <= 1) return qfalse;

 if (BotIsFirstInRankings(bs)) {
  BotAI_BotInitialChat(bs, "level_end_victory",
    EasyClientName(bs->client, name, 32),
    BotRandomOpponentName(bs),
    "[invalid var]",
    BotLastClientInRankings(),
    BotMapTitle(),
    ((void*)0));
 }
 else if (BotIsLastInRankings(bs)) {
  BotAI_BotInitialChat(bs, "level_end_lose",
    EasyClientName(bs->client, name, 32),
    BotRandomOpponentName(bs),
    BotFirstClientInRankings(),
    "[invalid var]",
    BotMapTitle(),
    ((void*)0));
 }
 else {
  BotAI_BotInitialChat(bs, "level_end",
    EasyClientName(bs->client, name, 32),
    BotRandomOpponentName(bs),
    BotFirstClientInRankings(),
    BotLastClientInRankings(),
    BotMapTitle(),
    ((void*)0));
 }
 bs->lastchat_time = FloatTime();
 bs->chatto = CHAT_ALL;
 return qtrue;
}
