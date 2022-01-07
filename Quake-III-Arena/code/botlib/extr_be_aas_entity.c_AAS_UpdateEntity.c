
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_8__ {scalar_t__ solid; int origin; int angles; int maxs; int mins; int torsoAnim; int legsAnim; int weapon; int powerups; int eventParm; int event; int frame; int modelindex2; int modelindex; int groundent; int old_origin; int flags; int type; } ;
typedef TYPE_2__ bot_entitystate_t ;
struct TYPE_7__ {void* ltime; scalar_t__ solid; int number; int origin; int maxs; int mins; int angles; int modelindex; void* valid; int torsoAnim; int legsAnim; int weapon; int powerups; int eventParm; int event; int frame; int modelindex2; int groundent; int old_origin; int lastvisorigin; int flags; int type; void* update_time; } ;
struct TYPE_9__ {int * leaves; int * areas; TYPE_1__ i; } ;
typedef TYPE_3__ aas_entity_t ;
struct TYPE_11__ {int numframes; TYPE_3__* entities; int loaded; } ;
struct TYPE_10__ {int (* Print ) (int ,char*) ;} ;


 int * AAS_BSPLinkEntity (int ,int ,int,int ) ;
 int AAS_BSPModelMinsMaxsOrigin (int ,int ,int ,int ,int *) ;
 int * AAS_LinkEntityClientBBox (int ,int ,int,int ) ;
 void* AAS_Time () ;
 int AAS_UnlinkFromAreas (int *) ;
 int AAS_UnlinkFromBSPLeaves (int *) ;
 int BLERR_NOAASFILE ;
 int BLERR_NOERROR ;
 int ENTITYNUM_WORLD ;
 int PRESENCE_NORMAL ;
 int PRT_MESSAGE ;
 scalar_t__ SOLID_BBOX ;
 scalar_t__ SOLID_BSP ;
 int VectorAdd (int ,int ,int ) ;
 int VectorCompare (int ,int ) ;
 int VectorCopy (int ,int ) ;
 TYPE_5__ aasworld ;
 TYPE_4__ botimport ;
 int qfalse ;
 void* qtrue ;
 int stub1 (int ,char*) ;

int AAS_UpdateEntity(int entnum, bot_entitystate_t *state)
{
 int relink;
 aas_entity_t *ent;
 vec3_t absmins, absmaxs;

 if (!aasworld.loaded)
 {
  botimport.Print(PRT_MESSAGE, "AAS_UpdateEntity: not loaded\n");
  return BLERR_NOAASFILE;
 }

 ent = &aasworld.entities[entnum];

 if (!state) {

  AAS_UnlinkFromAreas(ent->areas);

  AAS_UnlinkFromBSPLeaves(ent->leaves);

  ent->areas = ((void*)0);

  ent->leaves = ((void*)0);
  return BLERR_NOERROR;
 }

 ent->i.update_time = AAS_Time() - ent->i.ltime;
 ent->i.type = state->type;
 ent->i.flags = state->flags;
 ent->i.ltime = AAS_Time();
 VectorCopy(ent->i.origin, ent->i.lastvisorigin);
 VectorCopy(state->old_origin, ent->i.old_origin);
 ent->i.solid = state->solid;
 ent->i.groundent = state->groundent;
 ent->i.modelindex = state->modelindex;
 ent->i.modelindex2 = state->modelindex2;
 ent->i.frame = state->frame;
 ent->i.event = state->event;
 ent->i.eventParm = state->eventParm;
 ent->i.powerups = state->powerups;
 ent->i.weapon = state->weapon;
 ent->i.legsAnim = state->legsAnim;
 ent->i.torsoAnim = state->torsoAnim;

 ent->i.number = entnum;

 ent->i.valid = qtrue;

 if (aasworld.numframes == 1) relink = qtrue;
 else relink = qfalse;

 if (ent->i.solid == SOLID_BSP)
 {

  if (!VectorCompare(state->angles, ent->i.angles))
  {
   VectorCopy(state->angles, ent->i.angles);
   relink = qtrue;
  }


  AAS_BSPModelMinsMaxsOrigin(ent->i.modelindex, ent->i.angles, ent->i.mins, ent->i.maxs, ((void*)0));
 }
 else if (ent->i.solid == SOLID_BBOX)
 {

  if (!VectorCompare(state->mins, ent->i.mins) ||
    !VectorCompare(state->maxs, ent->i.maxs))
  {
   VectorCopy(state->mins, ent->i.mins);
   VectorCopy(state->maxs, ent->i.maxs);
   relink = qtrue;
  }
  VectorCopy(state->angles, ent->i.angles);
 }

 if (!VectorCompare(state->origin, ent->i.origin))
 {
  VectorCopy(state->origin, ent->i.origin);
  relink = qtrue;
 }

 if (relink)
 {

  if (entnum != ENTITYNUM_WORLD)
  {

   VectorAdd(ent->i.mins, ent->i.origin, absmins);
   VectorAdd(ent->i.maxs, ent->i.origin, absmaxs);

   AAS_UnlinkFromAreas(ent->areas);

   ent->areas = AAS_LinkEntityClientBBox(absmins, absmaxs, entnum, PRESENCE_NORMAL);

   AAS_UnlinkFromBSPLeaves(ent->leaves);

   ent->leaves = AAS_BSPLinkEntity(absmins, absmaxs, entnum, 0);
  }
 }
 return BLERR_NOERROR;
}
