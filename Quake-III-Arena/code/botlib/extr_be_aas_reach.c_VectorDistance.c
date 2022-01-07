
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 float VectorLength (int ) ;
 int VectorSubtract (int ,int ,int ) ;

float VectorDistance(vec3_t v1, vec3_t v2)
{
 vec3_t dir;

 VectorSubtract(v2, v1, dir);
 return VectorLength(dir);
}
