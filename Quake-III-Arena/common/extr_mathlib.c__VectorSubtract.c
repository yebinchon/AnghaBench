
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* vec3_t ;



void _VectorSubtract (vec3_t va, vec3_t vb, vec3_t out)
{
 out[0] = va[0]-vb[0];
 out[1] = va[1]-vb[1];
 out[2] = va[2]-vb[2];
}
