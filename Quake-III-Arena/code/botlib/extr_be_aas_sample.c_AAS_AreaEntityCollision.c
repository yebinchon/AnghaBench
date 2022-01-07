
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vec3_t ;
typedef int qboolean ;
struct TYPE_8__ {int fraction; int endpos; int ent; int startsolid; } ;
typedef TYPE_1__ bsp_trace_t ;
struct TYPE_9__ {scalar_t__ planenum; scalar_t__ area; int endpos; int ent; int startsolid; } ;
typedef TYPE_2__ aas_trace_t ;
struct TYPE_10__ {int entnum; struct TYPE_10__* next_ent; } ;
typedef TYPE_3__ aas_link_t ;
struct TYPE_11__ {TYPE_3__** arealinkedentities; } ;


 scalar_t__ AAS_EntityCollision (int,int ,int ,int ,int ,int,TYPE_1__*) ;
 int AAS_PresenceTypeBoundingBox (int,int ,int ) ;
 int CONTENTS_PLAYERCLIP ;
 int CONTENTS_SOLID ;
 int Com_Memset (TYPE_1__*,int ,int) ;
 int VectorCopy (int ,int ) ;
 TYPE_4__ aasworld ;
 int qfalse ;
 int qtrue ;

qboolean AAS_AreaEntityCollision(int areanum, vec3_t start, vec3_t end,
          int presencetype, int passent, aas_trace_t *trace)
{
 int collision;
 vec3_t boxmins, boxmaxs;
 aas_link_t *link;
 bsp_trace_t bsptrace;

 AAS_PresenceTypeBoundingBox(presencetype, boxmins, boxmaxs);

 Com_Memset(&bsptrace, 0, sizeof(bsp_trace_t));

 bsptrace.fraction = 1;
 collision = qfalse;
 for (link = aasworld.arealinkedentities[areanum]; link; link = link->next_ent)
 {

  if (link->entnum == passent) continue;

  if (AAS_EntityCollision(link->entnum, start, boxmins, boxmaxs, end,
            CONTENTS_SOLID|CONTENTS_PLAYERCLIP, &bsptrace))
  {
   collision = qtrue;
  }
 }
 if (collision)
 {
  trace->startsolid = bsptrace.startsolid;
  trace->ent = bsptrace.ent;
  VectorCopy(bsptrace.endpos, trace->endpos);
  trace->area = 0;
  trace->planenum = 0;
  return qtrue;
 }
 return qfalse;
}
