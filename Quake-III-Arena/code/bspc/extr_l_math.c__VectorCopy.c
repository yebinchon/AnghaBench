
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vec3_t ;



void _VectorCopy (vec3_t in, vec3_t out)
{
 out[0] = in[0];
 out[1] = in[1];
 out[2] = in[2];
}
