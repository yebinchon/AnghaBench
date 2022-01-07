
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int client; int viewangles; int eye; int entitynum; } ;
typedef TYPE_1__ bot_state_t ;
struct TYPE_8__ {int valid; } ;
typedef TYPE_2__ aas_entityinfo_t ;


 int BotEntityInfo (int,TYPE_2__*) ;
 float BotEntityVisible (int ,int ,int ,int,int) ;
 scalar_t__ BotSameTeam (TYPE_1__*,int) ;
 int EntityCarriesFlag (TYPE_2__*) ;
 int MAX_CLIENTS ;
 int maxclients ;

int BotEnemyFlagCarrierVisible(bot_state_t *bs) {
 int i;
 float vis;
 aas_entityinfo_t entinfo;

 for (i = 0; i < maxclients && i < MAX_CLIENTS; i++) {
  if (i == bs->client)
   continue;

  BotEntityInfo(i, &entinfo);

  if (!entinfo.valid)
   continue;

  if (!EntityCarriesFlag(&entinfo))
   continue;

  if (BotSameTeam(bs, i))
   continue;

  vis = BotEntityVisible(bs->entitynum, bs->eye, bs->viewangles, 360, i);
  if (vis <= 0)
   continue;

  return i;
 }
 return -1;
}
