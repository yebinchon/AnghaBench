
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int VectorAdd (int ,int ,int ) ;
 int VectorScale (int ,double,int ) ;

void VectorMiddle(vec3_t v1, vec3_t v2, vec3_t middle)
{
 VectorAdd(v1, v2, middle);
 VectorScale(middle, 0.5, middle);
}
