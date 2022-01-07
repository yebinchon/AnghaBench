
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int svFlags; } ;
struct TYPE_12__ {scalar_t__ number; } ;
struct TYPE_16__ {TYPE_4__ r; TYPE_3__* client; TYPE_1__ s; struct TYPE_16__* enemy; } ;
typedef TYPE_5__ gentity_t ;
struct TYPE_18__ {scalar_t__ integer; } ;
struct TYPE_17__ {scalar_t__ time; } ;
struct TYPE_13__ {scalar_t__ sessionTeam; } ;
struct TYPE_14__ {scalar_t__ lastkilled_client; scalar_t__ lasthurt_mod; scalar_t__ rewardTime; TYPE_2__ sess; } ;


 scalar_t__ GT_TEAM ;
 int G_Voice (TYPE_5__*,TYPE_5__*,int ,int ,int ) ;
 int MAX_CLIENTS ;
 scalar_t__ MOD_GAUNTLET ;
 int SAY_ALL ;
 int SAY_TELL ;
 int SVF_BOT ;
 int VOICECHAT_DEATHINSULT ;
 int VOICECHAT_KILLGAUNTLET ;
 int VOICECHAT_KILLINSULT ;
 int VOICECHAT_PRAISE ;
 int VOICECHAT_TAUNT ;
 TYPE_5__* g_entities ;
 TYPE_7__ g_gametype ;
 TYPE_6__ level ;
 int qfalse ;

__attribute__((used)) static void Cmd_VoiceTaunt_f( gentity_t *ent ) {
 gentity_t *who;
 int i;

 if (!ent->client) {
  return;
 }


 if (ent->enemy && ent->enemy->client && ent->enemy->client->lastkilled_client == ent->s.number) {

  if (!(ent->enemy->r.svFlags & SVF_BOT)) {
   G_Voice( ent, ent->enemy, SAY_TELL, VOICECHAT_DEATHINSULT, qfalse );
  }
  if (!(ent->r.svFlags & SVF_BOT)) {
   G_Voice( ent, ent, SAY_TELL, VOICECHAT_DEATHINSULT, qfalse );
  }
  ent->enemy = ((void*)0);
  return;
 }

 if (ent->client->lastkilled_client >= 0 && ent->client->lastkilled_client != ent->s.number) {
  who = g_entities + ent->client->lastkilled_client;
  if (who->client) {

   if (who->client->lasthurt_mod == MOD_GAUNTLET) {
    if (!(who->r.svFlags & SVF_BOT)) {
     G_Voice( ent, who, SAY_TELL, VOICECHAT_KILLGAUNTLET, qfalse );
    }
    if (!(ent->r.svFlags & SVF_BOT)) {
     G_Voice( ent, ent, SAY_TELL, VOICECHAT_KILLGAUNTLET, qfalse );
    }
   } else {
    if (!(who->r.svFlags & SVF_BOT)) {
     G_Voice( ent, who, SAY_TELL, VOICECHAT_KILLINSULT, qfalse );
    }
    if (!(ent->r.svFlags & SVF_BOT)) {
     G_Voice( ent, ent, SAY_TELL, VOICECHAT_KILLINSULT, qfalse );
    }
   }
   ent->client->lastkilled_client = -1;
   return;
  }
 }

 if (g_gametype.integer >= GT_TEAM) {

  for(i = 0; i < MAX_CLIENTS; i++) {
   who = g_entities + i;
   if (who->client && who != ent && who->client->sess.sessionTeam == ent->client->sess.sessionTeam) {
    if (who->client->rewardTime > level.time) {
     if (!(who->r.svFlags & SVF_BOT)) {
      G_Voice( ent, who, SAY_TELL, VOICECHAT_PRAISE, qfalse );
     }
     if (!(ent->r.svFlags & SVF_BOT)) {
      G_Voice( ent, ent, SAY_TELL, VOICECHAT_PRAISE, qfalse );
     }
     return;
    }
   }
  }
 }


 G_Voice( ent, ((void*)0), SAY_ALL, VOICECHAT_TAUNT, qfalse );
}
