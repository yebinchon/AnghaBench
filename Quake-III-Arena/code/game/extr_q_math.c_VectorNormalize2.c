
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float vec_t ;
typedef float* vec3_t ;


 int VectorClear (float*) ;
 float sqrt (float) ;

vec_t VectorNormalize2( const vec3_t v, vec3_t out) {
 float length, ilength;

 length = v[0]*v[0] + v[1]*v[1] + v[2]*v[2];
 length = sqrt (length);

 if (length)
 {



  ilength = 1/length;
  out[0] = v[0]*ilength;
  out[1] = v[1]*ilength;
  out[2] = v[2]*ilength;
 } else {



  VectorClear( out );
 }

 return length;

}
