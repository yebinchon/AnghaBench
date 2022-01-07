
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 float VectorLengthSquared (int ) ;
 int VectorSubtract (int ,int ,int ) ;

float VectorDistanceSquared(vec3_t p1, vec3_t p2)
{
 vec3_t dir;
 VectorSubtract(p2, p1, dir);
 return VectorLengthSquared(dir);
}
