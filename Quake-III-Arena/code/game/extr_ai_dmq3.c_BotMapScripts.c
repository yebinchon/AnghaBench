
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
typedef int mapname ;
typedef int info ;
struct TYPE_7__ {scalar_t__* origin; int client; scalar_t__ entitynum; int* ideal_viewangles; int tfl; int viewangles; int character; int eye; int flags; } ;
typedef TYPE_1__ bot_state_t ;
struct TYPE_8__ {scalar_t__ number; scalar_t__* origin; int valid; } ;
typedef TYPE_2__ aas_entityinfo_t ;


 void* AngleMod (int) ;
 int BFL_IDEALVIEWSET ;
 int BotEntityInfo (int,TYPE_2__*) ;
 scalar_t__ BotSameTeam (TYPE_1__*,int) ;
 int CHARACTERISTIC_AIM_ACCURACY ;
 scalar_t__ EntityIsDead (TYPE_2__*) ;
 scalar_t__ InFieldOfVision (int ,int,int*) ;
 int Info_ValueForKey (char*,char*) ;
 int MAX_CLIENTS ;
 size_t PITCH ;
 int Q_stricmp (char*,char*) ;
 int TFL_FUNCBOB ;
 int VectorSubtract (scalar_t__*,int ,scalar_t__*) ;
 size_t YAW ;
 int crandom () ;
 int maxclients ;
 int qfalse ;
 int qtrue ;
 int strncpy (char*,int ,int) ;
 float trap_Characteristic_BFloat (int ,int ,int ,int) ;
 int trap_EA_Attack (int) ;
 int trap_GetServerinfo (char*,int) ;
 int vectoangles (scalar_t__*,int*) ;

void BotMapScripts(bot_state_t *bs) {
 char info[1024];
 char mapname[128];
 int i, shootbutton;
 float aim_accuracy;
 aas_entityinfo_t entinfo;
 vec3_t dir;

 trap_GetServerinfo(info, sizeof(info));

 strncpy(mapname, Info_ValueForKey( info, "mapname" ), sizeof(mapname)-1);
 mapname[sizeof(mapname)-1] = '\0';

 if (!Q_stricmp(mapname, "q3tourney6")) {
  vec3_t mins = {700, 204, 672}, maxs = {964, 468, 680};
  vec3_t buttonorg = {304, 352, 920};

  bs->tfl &= ~TFL_FUNCBOB;

  if (bs->origin[0] > mins[0] && bs->origin[0] < maxs[0]) {
   if (bs->origin[1] > mins[1] && bs->origin[1] < maxs[1]) {
    if (bs->origin[2] < mins[2]) {
     return;
    }
   }
  }
  shootbutton = qfalse;

  for (i = 0; i < maxclients && i < MAX_CLIENTS; i++) {

   if (i == bs->client) continue;

   BotEntityInfo(i, &entinfo);

   if (!entinfo.valid) continue;

   if (EntityIsDead(&entinfo) || entinfo.number == bs->entitynum) continue;

   if (entinfo.origin[0] > mins[0] && entinfo.origin[0] < maxs[0]) {
    if (entinfo.origin[1] > mins[1] && entinfo.origin[1] < maxs[1]) {
     if (entinfo.origin[2] < mins[2]) {

      if (BotSameTeam(bs, i)) {
       shootbutton = qfalse;
       break;
      }
      else {
       shootbutton = qtrue;
      }
     }
    }
   }
  }
  if (shootbutton) {
   bs->flags |= BFL_IDEALVIEWSET;
   VectorSubtract(buttonorg, bs->eye, dir);
   vectoangles(dir, bs->ideal_viewangles);
   aim_accuracy = trap_Characteristic_BFloat(bs->character, CHARACTERISTIC_AIM_ACCURACY, 0, 1);
   bs->ideal_viewangles[PITCH] += 8 * crandom() * (1 - aim_accuracy);
   bs->ideal_viewangles[PITCH] = AngleMod(bs->ideal_viewangles[PITCH]);
   bs->ideal_viewangles[YAW] += 8 * crandom() * (1 - aim_accuracy);
   bs->ideal_viewangles[YAW] = AngleMod(bs->ideal_viewangles[YAW]);

   if (InFieldOfVision(bs->viewangles, 20, bs->ideal_viewangles)) {
    trap_EA_Attack(bs->client);
   }
  }
 }
 else if (!Q_stricmp(mapname, "mpq3tourney6")) {

  bs->tfl &= ~TFL_FUNCBOB;
 }
}
