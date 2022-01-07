
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_5__ {int contents; int fraction; int ent; scalar_t__* endpos; } ;
typedef TYPE_1__ bsp_trace_t ;
struct TYPE_6__ {scalar_t__* mins; scalar_t__* maxs; scalar_t__* origin; } ;
typedef TYPE_2__ aas_entityinfo_t ;


 int BotAI_Trace (TYPE_1__*,scalar_t__*,int *,int *,scalar_t__*,int,int) ;
 int BotEntityInfo (int,TYPE_2__*) ;
 int CONTENTS_FOG ;
 int CONTENTS_LAVA ;
 int CONTENTS_PLAYERCLIP ;
 int CONTENTS_SLIME ;
 int CONTENTS_SOLID ;
 int CONTENTS_WATER ;
 int InFieldOfVision (scalar_t__*,float,scalar_t__*) ;
 int VectorAdd (scalar_t__*,scalar_t__*,scalar_t__*) ;
 int VectorCopy (scalar_t__*,scalar_t__*) ;
 float VectorLengthSquared (scalar_t__*) ;
 int VectorScale (scalar_t__*,double,scalar_t__*) ;
 int VectorSubtract (scalar_t__*,scalar_t__*,scalar_t__*) ;
 int trap_AAS_PointContents (scalar_t__*) ;
 int vectoangles (scalar_t__*,scalar_t__*) ;

float BotEntityVisible(int viewer, vec3_t eye, vec3_t viewangles, float fov, int ent) {
 int i, contents_mask, passent, hitent, infog, inwater, otherinfog, pc;
 float squaredfogdist, waterfactor, vis, bestvis;
 bsp_trace_t trace;
 aas_entityinfo_t entinfo;
 vec3_t dir, entangles, start, end, middle;


 BotEntityInfo(ent, &entinfo);
 VectorAdd(entinfo.mins, entinfo.maxs, middle);
 VectorScale(middle, 0.5, middle);
 VectorAdd(entinfo.origin, middle, middle);

 VectorSubtract(middle, eye, dir);
 vectoangles(dir, entangles);
 if (!InFieldOfVision(viewangles, fov, entangles)) return 0;

 pc = trap_AAS_PointContents(eye);
 infog = (pc & CONTENTS_FOG);
 inwater = (pc & (CONTENTS_LAVA|CONTENTS_SLIME|CONTENTS_WATER));

 bestvis = 0;
 for (i = 0; i < 3; i++) {



  contents_mask = CONTENTS_SOLID|CONTENTS_PLAYERCLIP;
  passent = viewer;
  hitent = ent;
  VectorCopy(eye, start);
  VectorCopy(middle, end);

  if (trap_AAS_PointContents(middle) & (CONTENTS_LAVA|CONTENTS_SLIME|CONTENTS_WATER)) {
   contents_mask |= (CONTENTS_LAVA|CONTENTS_SLIME|CONTENTS_WATER);
  }

  if (inwater) {
   if (!(contents_mask & (CONTENTS_LAVA|CONTENTS_SLIME|CONTENTS_WATER))) {
    passent = ent;
    hitent = viewer;
    VectorCopy(middle, start);
    VectorCopy(eye, end);
   }
   contents_mask ^= (CONTENTS_LAVA|CONTENTS_SLIME|CONTENTS_WATER);
  }

  BotAI_Trace(&trace, start, ((void*)0), ((void*)0), end, passent, contents_mask);

  waterfactor = 1.0;
  if (trace.contents & (CONTENTS_LAVA|CONTENTS_SLIME|CONTENTS_WATER)) {

   if (1) {

    contents_mask &= ~(CONTENTS_LAVA|CONTENTS_SLIME|CONTENTS_WATER);
    BotAI_Trace(&trace, trace.endpos, ((void*)0), ((void*)0), end, passent, contents_mask);
    waterfactor = 0.5;
   }
  }

  if (trace.fraction >= 1 || trace.ent == hitent) {


   otherinfog = (trap_AAS_PointContents(middle) & CONTENTS_FOG);
   if (infog && otherinfog) {
    VectorSubtract(trace.endpos, eye, dir);
    squaredfogdist = VectorLengthSquared(dir);
   }
   else if (infog) {
    VectorCopy(trace.endpos, start);
    BotAI_Trace(&trace, start, ((void*)0), ((void*)0), eye, viewer, CONTENTS_FOG);
    VectorSubtract(eye, trace.endpos, dir);
    squaredfogdist = VectorLengthSquared(dir);
   }
   else if (otherinfog) {
    VectorCopy(trace.endpos, end);
    BotAI_Trace(&trace, eye, ((void*)0), ((void*)0), end, viewer, CONTENTS_FOG);
    VectorSubtract(end, trace.endpos, dir);
    squaredfogdist = VectorLengthSquared(dir);
   }
   else {

    squaredfogdist = 0;
   }

   vis = 1 / ((squaredfogdist * 0.001) < 1 ? 1 : (squaredfogdist * 0.001));

   vis *= waterfactor;

   if (vis > bestvis) bestvis = vis;

   if (bestvis >= 0.95) return bestvis;
  }

  if (i == 0) middle[2] += entinfo.mins[2];
  else if (i == 1) middle[2] += entinfo.maxs[2] - entinfo.mins[2];
 }
 return bestvis;
}
