
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* vec3_t ;


 int VectorClear (float*) ;

float NormalizeColor( const vec3_t in, vec3_t out ) {
 float max;

 max = in[0];
 if ( in[1] > max ) {
  max = in[1];
 }
 if ( in[2] > max ) {
  max = in[2];
 }

 if ( !max ) {
  VectorClear( out );
 } else {
  out[0] = in[0] / max;
  out[1] = in[1] / max;
  out[2] = in[2] / max;
 }
 return max;
}
