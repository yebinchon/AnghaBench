
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_3__ {int* endpos; scalar_t__ startsolid; } ;
typedef TYPE_1__ bsp_trace_t ;


 TYPE_1__ AAS_Trace (int*,int*,int*,int*,int ,int ) ;
 int CONTENTS_SOLID ;
 int VectorCopy (int*,int*) ;
 int qfalse ;
 int qtrue ;

int AAS_DropToFloor(vec3_t origin, vec3_t mins, vec3_t maxs)
{
 vec3_t end;
 bsp_trace_t trace;

 VectorCopy(origin, end);
 end[2] -= 100;
 trace = AAS_Trace(origin, mins, maxs, end, 0, CONTENTS_SOLID);
 if (trace.startsolid) return qfalse;
 VectorCopy(trace.endpos, origin);
 return qtrue;
}
