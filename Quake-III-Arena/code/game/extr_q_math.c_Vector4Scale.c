
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec_t ;
typedef int* vec4_t ;



void Vector4Scale( const vec4_t in, vec_t scale, vec4_t out ) {
 out[0] = in[0]*scale;
 out[1] = in[1]*scale;
 out[2] = in[2]*scale;
 out[3] = in[3]*scale;
}
