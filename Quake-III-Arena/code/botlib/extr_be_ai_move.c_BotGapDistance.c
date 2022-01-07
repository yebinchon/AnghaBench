
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_5__ {int fraction; int* endpos; int startsolid; } ;
typedef TYPE_1__ aas_trace_t ;
struct TYPE_7__ {scalar_t__ value; } ;
struct TYPE_6__ {float value; } ;


 int AAS_PointContents (int*) ;
 TYPE_1__ AAS_TraceClientBBox (int*,int*,int ,int) ;
 int CONTENTS_WATER ;
 int PRESENCE_CROUCH ;
 int VectorCopy (int*,int*) ;
 int VectorMA (int*,float,int*,int*) ;
 TYPE_3__* sv_maxbarrier ;
 TYPE_2__* sv_maxstep ;

float BotGapDistance(vec3_t origin, vec3_t hordir, int entnum)
{
 float dist, startz;
 vec3_t start, end;
 aas_trace_t trace;


 startz = origin[2];

 {
  VectorCopy(origin, start);
  VectorCopy(origin, end);
  end[2] -= 60;
  trace = AAS_TraceClientBBox(start, end, PRESENCE_CROUCH, entnum);
  if (trace.fraction >= 1) return 1;
  startz = trace.endpos[2] + 1;
 }

 for (dist = 8; dist <= 100; dist += 8)
 {
  VectorMA(origin, dist, hordir, start);
  start[2] = startz + 24;
  VectorCopy(start, end);
  end[2] -= 48 + sv_maxbarrier->value;
  trace = AAS_TraceClientBBox(start, end, PRESENCE_CROUCH, entnum);

  if (!trace.startsolid)
  {

   if (trace.endpos[2] < startz - sv_maxstep->value - 8)
   {
    VectorCopy(trace.endpos, end);
    end[2] -= 20;
    if (AAS_PointContents(end) & CONTENTS_WATER) break;


    return dist;
   }
   startz = trace.endpos[2];
  }
 }
 return 0;
}
