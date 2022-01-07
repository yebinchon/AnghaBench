
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int name ;
struct TYPE_10__ {scalar_t__ lastchat_time; size_t client; int chatto; int character; } ;
typedef TYPE_2__ bot_state_t ;
struct TYPE_13__ {int integer; } ;
struct TYPE_12__ {scalar_t__ integer; } ;
struct TYPE_11__ {TYPE_1__* client; } ;
struct TYPE_9__ {int lasthurt_client; } ;


 int BotAI_BotInitialChat (TYPE_2__*,char*,char*,char*,int *) ;
 int BotNumActivePlayers () ;
 int BotValidChatPosition (TYPE_2__*) ;
 char* BotWeaponNameForMeansOfDeath (int) ;
 int CHARACTERISTIC_CHAT_HITTALKING ;
 int CHAT_ALL ;
 int ClientName (int,char*,int) ;
 scalar_t__ FloatTime () ;
 scalar_t__ GT_TOURNAMENT ;
 int MAX_CLIENTS ;
 scalar_t__ TIME_BETWEENCHATTING ;
 scalar_t__ TeamPlayIsOn () ;
 TYPE_5__ bot_fastchat ;
 TYPE_4__ bot_nochat ;
 TYPE_3__* g_entities ;
 scalar_t__ gametype ;
 int qfalse ;
 int qtrue ;
 float random () ;
 float trap_Characteristic_BFloat (int ,int ,int ,int) ;

int BotChat_HitTalking(bot_state_t *bs) {
 char name[32], *weap;
 int lasthurt_client;
 float rnd;

 if (bot_nochat.integer) return qfalse;
 if (bs->lastchat_time > FloatTime() - TIME_BETWEENCHATTING) return qfalse;
 if (BotNumActivePlayers() <= 1) return qfalse;
 lasthurt_client = g_entities[bs->client].client->lasthurt_client;
 if (!lasthurt_client) return qfalse;
 if (lasthurt_client == bs->client) return qfalse;

 if (lasthurt_client < 0 || lasthurt_client >= MAX_CLIENTS) return qfalse;

 rnd = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_CHAT_HITTALKING, 0, 1);

 if (TeamPlayIsOn()) return qfalse;

 if (gametype == GT_TOURNAMENT) return qfalse;

 if (!bot_fastchat.integer) {
  if (random() > rnd * 0.5) return qfalse;
 }
 if (!BotValidChatPosition(bs)) return qfalse;

 ClientName(g_entities[bs->client].client->lasthurt_client, name, sizeof(name));
 weap = BotWeaponNameForMeansOfDeath(g_entities[bs->client].client->lasthurt_client);

 BotAI_BotInitialChat(bs, "hit_talking", name, weap, ((void*)0));
 bs->lastchat_time = FloatTime();
 bs->chatto = CHAT_ALL;
 return qtrue;
}
