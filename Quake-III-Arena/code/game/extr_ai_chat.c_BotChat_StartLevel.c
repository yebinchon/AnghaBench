
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ lastchat_time; int chatto; int client; int character; } ;
typedef TYPE_1__ bot_state_t ;
struct TYPE_9__ {int integer; } ;
struct TYPE_8__ {scalar_t__ integer; } ;


 int BotAI_BotInitialChat (TYPE_1__*,char*,int ,int *) ;
 scalar_t__ BotIsObserver (TYPE_1__*) ;
 int BotNumActivePlayers () ;
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

int BotChat_StartLevel(bot_state_t *bs) {
 char name[32];
 float rnd;

 if (bot_nochat.integer) return qfalse;
 if (BotIsObserver(bs)) return qfalse;
 if (bs->lastchat_time > FloatTime() - TIME_BETWEENCHATTING) return qfalse;

 if (TeamPlayIsOn()) {
     trap_EA_Command(bs->client, "vtaunt");
     return qfalse;
 }

 if (gametype == GT_TOURNAMENT) return qfalse;
 rnd = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_CHAT_STARTENDLEVEL, 0, 1);
 if (!bot_fastchat.integer) {
  if (random() > rnd) return qfalse;
 }
 if (BotNumActivePlayers() <= 1) return qfalse;
 BotAI_BotInitialChat(bs, "level_start",
    EasyClientName(bs->client, name, 32),
    ((void*)0));
 bs->lastchat_time = FloatTime();
 bs->chatto = CHAT_ALL;
 return qtrue;
}
