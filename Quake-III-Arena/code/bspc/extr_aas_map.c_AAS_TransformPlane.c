
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_2__ {float dist; int normal; } ;


 int CreateRotationMatrix (int ,float**) ;
 float DotProduct (int ,int ) ;
 int FindFloatPlane (int ,float) ;
 int RotatePoint (int ,float**) ;
 int VectorCopy (int ,int ) ;
 TYPE_1__* mapplanes ;

int AAS_TransformPlane(int planenum, vec3_t origin, vec3_t angles)
{
 float newdist, matrix[3][3];
 vec3_t normal;


 VectorCopy(mapplanes[planenum].normal, normal);
 CreateRotationMatrix(angles, matrix);
 RotatePoint(normal, matrix);
 newdist = mapplanes[planenum].dist + DotProduct(normal, origin);
 return FindFloatPlane(normal, newdist);
}
