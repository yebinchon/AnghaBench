
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_4__ {int facenum; int edgenum; } ;
typedef TYPE_1__ aas_reachability_t ;
struct TYPE_5__ {int (* Print ) (int ,char*,int) ;} ;


 int AAS_BSPModelMinsMaxsOrigin (int,int*,int*,int*,int *) ;
 int AAS_OriginOfMoverWithModelNum (int,int*) ;
 int PRT_MESSAGE ;
 int VectorAdd (int*,int*,int*) ;
 int VectorCopy (int*,int*) ;
 int VectorScale (int*,double,int*) ;
 int VectorSet (int*,int ,int ,int ) ;
 TYPE_2__ botimport ;
 int stub1 (int ,char*,int) ;

void BotFuncBobStartEnd(aas_reachability_t *reach, vec3_t start, vec3_t end, vec3_t origin)
{
 int spawnflags, modelnum;
 vec3_t mins, maxs, mid, angles = {0, 0, 0};
 int num0, num1;

 modelnum = reach->facenum & 0x0000FFFF;
 if (!AAS_OriginOfMoverWithModelNum(modelnum, origin))
 {
  botimport.Print(PRT_MESSAGE, "BotFuncBobStartEnd: no entity with model %d\n", modelnum);
  VectorSet(start, 0, 0, 0);
  VectorSet(end, 0, 0, 0);
  return;
 }
 AAS_BSPModelMinsMaxsOrigin(modelnum, angles, mins, maxs, ((void*)0));
 VectorAdd(mins, maxs, mid);
 VectorScale(mid, 0.5, mid);
 VectorCopy(mid, start);
 VectorCopy(mid, end);
 spawnflags = reach->facenum >> 16;
 num0 = reach->edgenum >> 16;
 if (num0 > 0x00007FFF) num0 |= 0xFFFF0000;
 num1 = reach->edgenum & 0x0000FFFF;
 if (num1 > 0x00007FFF) num1 |= 0xFFFF0000;
 if (spawnflags & 1)
 {
  start[0] = num0;
  end[0] = num1;

  origin[0] += mid[0];
  origin[1] = mid[1];
  origin[2] = mid[2];
 }
 else if (spawnflags & 2)
 {
  start[1] = num0;
  end[1] = num1;

  origin[0] = mid[0];
  origin[1] += mid[1];
  origin[2] = mid[2];
 }
 else
 {
  start[2] = num0;
  end[2] = num1;

  origin[0] = mid[0];
  origin[1] = mid[1];
  origin[2] += mid[2];
 }
}
