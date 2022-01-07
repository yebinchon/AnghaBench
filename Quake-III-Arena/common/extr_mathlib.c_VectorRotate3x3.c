
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* vec3_t ;



void VectorRotate3x3( vec3_t v, float r[3][3], vec3_t d )
{
 d[0] = v[0] * r[0][0] + v[1] * r[1][0] + v[2] * r[2][0];
 d[1] = v[0] * r[0][1] + v[1] * r[1][1] + v[2] * r[2][1];
 d[2] = v[0] * r[0][2] + v[1] * r[1][2] + v[2] * r[2][2];
}
