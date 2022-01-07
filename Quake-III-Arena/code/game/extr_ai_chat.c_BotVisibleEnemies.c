
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int client; scalar_t__ entitynum; int viewangles; int eye; } ;
typedef TYPE_1__ bot_state_t ;
struct TYPE_10__ {scalar_t__ number; int valid; } ;
typedef TYPE_2__ aas_entityinfo_t ;


 int BotEntityInfo (int,TYPE_2__*) ;
 float BotEntityVisible (scalar_t__,int ,int ,int,int) ;
 scalar_t__ BotSameTeam (TYPE_1__*,int) ;
 scalar_t__ EntityIsDead (TYPE_2__*) ;
 scalar_t__ EntityIsInvisible (TYPE_2__*) ;
 int EntityIsShooting (TYPE_2__*) ;
 int MAX_CLIENTS ;
 int qfalse ;
 int qtrue ;

int BotVisibleEnemies(bot_state_t *bs) {
 float vis;
 int i;
 aas_entityinfo_t entinfo;

 for (i = 0; i < MAX_CLIENTS; i++) {

  if (i == bs->client) continue;

  BotEntityInfo(i, &entinfo);

  if (!entinfo.valid) continue;

  if (EntityIsDead(&entinfo) || entinfo.number == bs->entitynum) continue;

  if (EntityIsInvisible(&entinfo) && !EntityIsShooting(&entinfo)) {
   continue;
  }

  if (BotSameTeam(bs, i)) continue;

  vis = BotEntityVisible(bs->entitynum, bs->eye, bs->viewangles, 360, i);
  if (vis > 0) return qtrue;
 }
 return qfalse;
}
