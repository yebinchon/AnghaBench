
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec_t ;
typedef int* vec3_t ;



void _VectorScale (vec3_t v, vec_t scale, vec3_t out)
{
 out[0] = v[0] * scale;
 out[1] = v[1] * scale;
 out[2] = v[2] * scale;
}
