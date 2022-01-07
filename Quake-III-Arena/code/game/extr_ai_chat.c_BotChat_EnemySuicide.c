
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ lastchat_time; scalar_t__ enemy; int chatto; int character; } ;
typedef TYPE_1__ bot_state_t ;
struct TYPE_10__ {int integer; } ;
struct TYPE_9__ {scalar_t__ integer; } ;


 int BotAI_BotInitialChat (TYPE_1__*,char*,char*,int *) ;
 int BotNumActivePlayers () ;
 int BotValidChatPosition (TYPE_1__*) ;
 scalar_t__ BotVisibleEnemies (TYPE_1__*) ;
 int CHARACTERISTIC_CHAT_KILL ;
 int CHAT_ALL ;
 int EasyClientName (scalar_t__,char*,int) ;
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
 int strcpy (char*,char*) ;
 float trap_Characteristic_BFloat (int ,int ,int ,int) ;

int BotChat_EnemySuicide(bot_state_t *bs) {
 char name[32];
 float rnd;

 if (bot_nochat.integer) return qfalse;
 if (bs->lastchat_time > FloatTime() - TIME_BETWEENCHATTING) return qfalse;
 if (BotNumActivePlayers() <= 1) return qfalse;

 rnd = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_CHAT_KILL, 0, 1);

 if (TeamPlayIsOn()) return qfalse;

 if (gametype == GT_TOURNAMENT) return qfalse;

 if (!bot_fastchat.integer) {
  if (random() > rnd) return qfalse;
 }
 if (!BotValidChatPosition(bs)) return qfalse;

 if (BotVisibleEnemies(bs)) return qfalse;

 if (bs->enemy >= 0) EasyClientName(bs->enemy, name, 32);
 else strcpy(name, "");
 BotAI_BotInitialChat(bs, "enemy_suicide", name, ((void*)0));
 bs->lastchat_time = FloatTime();
 bs->chatto = CHAT_ALL;
 return qtrue;
}
