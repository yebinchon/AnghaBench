
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int name ;
struct TYPE_11__ {size_t client; scalar_t__ lastchat_time; int chatto; int enemy; int character; } ;
typedef TYPE_2__ bot_state_t ;
typedef int aas_entityinfo_t ;
struct TYPE_14__ {int integer; } ;
struct TYPE_13__ {scalar_t__ integer; } ;
struct TYPE_12__ {TYPE_1__* client; } ;
struct TYPE_10__ {int lasthurt_client; int lasthurt_mod; } ;


 int BotAI_BotInitialChat (TYPE_2__*,char*,char*,char*,int *) ;
 int BotEntityInfo (int ,int *) ;
 int BotNumActivePlayers () ;
 int BotValidChatPosition (TYPE_2__*) ;
 scalar_t__ BotVisibleEnemies (TYPE_2__*) ;
 char* BotWeaponNameForMeansOfDeath (int ) ;
 int CHARACTERISTIC_CHAT_HITNODEATH ;
 int CHAT_ALL ;
 int ClientName (int,char*,int) ;
 scalar_t__ EntityIsShooting (int *) ;
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

int BotChat_HitNoDeath(bot_state_t *bs) {
 char name[32], *weap;
 float rnd;
 int lasthurt_client;
 aas_entityinfo_t entinfo;

 lasthurt_client = g_entities[bs->client].client->lasthurt_client;
 if (!lasthurt_client) return qfalse;
 if (lasthurt_client == bs->client) return qfalse;

 if (lasthurt_client < 0 || lasthurt_client >= MAX_CLIENTS) return qfalse;

 if (bot_nochat.integer) return qfalse;
 if (bs->lastchat_time > FloatTime() - TIME_BETWEENCHATTING) return qfalse;
 if (BotNumActivePlayers() <= 1) return qfalse;
 rnd = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_CHAT_HITNODEATH, 0, 1);

 if (TeamPlayIsOn()) return qfalse;

 if (gametype == GT_TOURNAMENT) return qfalse;

 if (!bot_fastchat.integer) {
  if (random() > rnd * 0.5) return qfalse;
 }
 if (!BotValidChatPosition(bs)) return qfalse;

 if (BotVisibleEnemies(bs)) return qfalse;

 BotEntityInfo(bs->enemy, &entinfo);
 if (EntityIsShooting(&entinfo)) return qfalse;

 ClientName(lasthurt_client, name, sizeof(name));
 weap = BotWeaponNameForMeansOfDeath(g_entities[bs->client].client->lasthurt_mod);

 BotAI_BotInitialChat(bs, "hit_nodeath", name, weap, ((void*)0));
 bs->lastchat_time = FloatTime();
 bs->chatto = CHAT_ALL;
 return qtrue;
}
