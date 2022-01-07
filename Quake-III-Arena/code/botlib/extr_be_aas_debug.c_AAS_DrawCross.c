
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* vec3_t ;


 int AAS_DebugLine (float*,float*,int) ;
 int VectorCopy (float*,float*) ;

void AAS_DrawCross(vec3_t origin, float size, int color)
{
 int i;
 vec3_t start, end;

 for (i = 0; i < 3; i++)
 {
  VectorCopy(origin, start);
  start[i] += size;
  VectorCopy(origin, end);
  end[i] -= size;
  AAS_DebugLine(start, end, color);
 }
}
