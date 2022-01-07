
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec_t ;
typedef int vec3_t ;


 int CrossProduct (int ,int ,int ) ;
 int DotProduct (int ,int ) ;
 int FindFloatPlane (int ,int ) ;
 int VectorNormalize (int ,int ) ;
 int VectorSubtract (int ,int ,int ) ;

int MapPlaneFromPoints (vec3_t p0, vec3_t p1, vec3_t p2) {
 vec3_t t1, t2, normal;
 vec_t dist;

 VectorSubtract (p0, p1, t1);
 VectorSubtract (p2, p1, t2);
 CrossProduct (t1, t2, normal);
 VectorNormalize (normal, normal);

 dist = DotProduct (p0, normal);

 return FindFloatPlane (normal, dist);
}
