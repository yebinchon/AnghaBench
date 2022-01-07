
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec_t ;
typedef int vec3_t ;


 int CrossProduct (int ,int ,int ) ;
 int DotProduct (int*,int ) ;
 int FindFloatPlane (int ,int ) ;
 int VectorNormalize (int ) ;
 int VectorSubtract (int*,int*,int ) ;

int PlaneFromPoints (int *p0, int *p1, int *p2)
{
 vec3_t t1, t2, normal;
 vec_t dist;

 VectorSubtract (p0, p1, t1);
 VectorSubtract (p2, p1, t2);
 CrossProduct (t1, t2, normal);
 VectorNormalize (normal);

 dist = DotProduct (p0, normal);

 return FindFloatPlane (normal, dist);
}
