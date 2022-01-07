
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 scalar_t__ DotProduct (int ,int ) ;
 int VectorSubtract (int ,int ,int ) ;

int VectorBetweenVectors(vec3_t v, vec3_t v1, vec3_t v2)
{
 vec3_t dir1, dir2;

 VectorSubtract(v, v1, dir1);
 VectorSubtract(v, v2, dir2);
 return (DotProduct(dir1, dir2) <= 0);
}
