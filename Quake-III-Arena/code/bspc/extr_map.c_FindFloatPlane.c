
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vec_t ;
typedef int vec3_t ;
struct TYPE_5__ {struct TYPE_5__* hash_chain; } ;
typedef TYPE_1__ plane_t ;


 int CreateNewFloatPlane (int ,int ) ;
 int PLANE_HASHES ;
 scalar_t__ PlaneEqual (TYPE_1__*,int ,int ) ;
 int SnapPlane (int ,int *) ;
 scalar_t__ fabs (int ) ;
 TYPE_1__* mapplanes ;
 int * mapplaneusers ;
 TYPE_1__** planehash ;

int FindFloatPlane (vec3_t normal, vec_t dist)
{
 int i;
 plane_t *p;
 int hash, h;

 SnapPlane (normal, &dist);
 hash = (int)fabs(dist) / 8;
 hash &= (PLANE_HASHES-1);


 for (i = -1; i <= 1; i++)
 {
  h = (hash+i)&(PLANE_HASHES-1);
  for (p = planehash[h]; p; p = p->hash_chain)
  {
   if (PlaneEqual(p, normal, dist))
   {
    mapplaneusers[p-mapplanes]++;
    return p - mapplanes;
   }
  }
 }
 i = CreateNewFloatPlane (normal, dist);
 mapplaneusers[i]++;
 return i;
}
