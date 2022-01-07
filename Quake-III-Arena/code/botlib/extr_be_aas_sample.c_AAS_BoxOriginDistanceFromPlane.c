
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec_t ;
typedef scalar_t__* vec3_t ;


 scalar_t__ BBOX_NORMAL_EPSILON ;
 int DotProduct (scalar_t__*,scalar_t__*) ;
 int VectorCopy (scalar_t__*,scalar_t__*) ;
 int VectorInverse (scalar_t__*) ;

vec_t AAS_BoxOriginDistanceFromPlane(vec3_t normal, vec3_t mins, vec3_t maxs, int side)
{
 vec3_t v1, v2;
 int i;


 if (side)
 {


  for (i = 0; i < 3; i++)
  {
   if (normal[i] > BBOX_NORMAL_EPSILON) v1[i] = maxs[i];
   else if (normal[i] < -BBOX_NORMAL_EPSILON) v1[i] = mins[i];
   else v1[i] = 0;
  }
 }
 else
 {


  for (i = 0; i < 3; i++)
  {
   if (normal[i] > BBOX_NORMAL_EPSILON) v1[i] = mins[i];
   else if (normal[i] < -BBOX_NORMAL_EPSILON) v1[i] = maxs[i];
   else v1[i] = 0;
  }
 }

 VectorCopy(normal, v2);
 VectorInverse(v2);

 return DotProduct(v1, v2);
}
