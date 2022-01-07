
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int * vec3_t ;
struct TYPE_4__ {int modelindex; int origin; } ;
struct TYPE_5__ {TYPE_1__ i; } ;
typedef TYPE_2__ aas_entity_t ;
struct TYPE_6__ {int maxentities; TYPE_2__* entities; } ;


 float VectorLength (int *) ;
 int VectorSubtract (int ,int *,int *) ;
 TYPE_3__ aasworld ;
 int abs (int ) ;

int AAS_NearestEntity(vec3_t origin, int modelindex)
{
 int i, bestentnum;
 float dist, bestdist;
 aas_entity_t *ent;
 vec3_t dir;

 bestentnum = 0;
 bestdist = 99999;
 for (i = 0; i < aasworld.maxentities; i++)
 {
  ent = &aasworld.entities[i];
  if (ent->i.modelindex != modelindex) continue;
  VectorSubtract(ent->i.origin, origin, dir);
  if (abs(dir[0]) < 40)
  {
   if (abs(dir[1]) < 40)
   {
    dist = VectorLength(dir);
    if (dist < bestdist)
    {
     bestdist = dist;
     bestentnum = i;
    }
   }
  }
 }
 return bestentnum;
}
