
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double vec_t ;
typedef double* vec3_t ;


 int VectorClear (double*) ;
 double sqrt (double) ;

vec_t VectorNormalize(vec3_t inout)
{
 vec_t length, ilength;

 length = sqrt (inout[0]*inout[0] + inout[1]*inout[1] + inout[2]*inout[2]);
 if (length == 0)
 {
  VectorClear (inout);
  return 0;
 }

 ilength = 1.0/length;
 inout[0] = inout[0]*ilength;
 inout[1] = inout[1]*ilength;
 inout[2] = inout[2]*ilength;

 return length;
}
