
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * vec3_t ;
struct TYPE_3__ {scalar_t__* normal; float dist; } ;
typedef TYPE_1__ aas_plane_t ;


 float DotProduct (scalar_t__*,int *) ;

int AAS_BoxOnPlaneSide2(vec3_t absmins, vec3_t absmaxs, aas_plane_t *p)
{
 int i, sides;
 float dist1, dist2;
 vec3_t corners[2];

 for (i = 0; i < 3; i++)
 {
  if (p->normal[i] < 0)
  {
   corners[0][i] = absmins[i];
   corners[1][i] = absmaxs[i];
  }
  else
  {
   corners[1][i] = absmins[i];
   corners[0][i] = absmaxs[i];
  }
 }
 dist1 = DotProduct(p->normal, corners[0]) - p->dist;
 dist2 = DotProduct(p->normal, corners[1]) - p->dist;
 sides = 0;
 if (dist1 >= 0) sides = 1;
 if (dist2 < 0) sides |= 2;

 return sides;
}
