
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float vec_t ;
typedef float* vec3_t ;


 float sqrt (float) ;

vec_t VectorNormalize( vec3_t v ) {

 float length, ilength;

 length = v[0]*v[0] + v[1]*v[1] + v[2]*v[2];
 length = sqrt (length);

 if ( length ) {
  ilength = 1/length;
  v[0] *= ilength;
  v[1] *= ilength;
  v[2] *= ilength;
 }

 return length;
}
