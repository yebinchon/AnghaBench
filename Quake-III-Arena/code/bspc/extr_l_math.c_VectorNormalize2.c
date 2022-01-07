
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double vec_t ;
typedef double* vec3_t ;


 int VectorClear (double*) ;
 double sqrt (double) ;

vec_t VectorNormalize2(const vec3_t in, vec3_t out)
{
 vec_t length, ilength;

 length = sqrt (in[0]*in[0] + in[1]*in[1] + in[2]*in[2]);
 if (length == 0)
 {
  VectorClear (out);
  return 0;
 }

 ilength = 1.0/length;
 out[0] = in[0]*ilength;
 out[1] = in[1]*ilength;
 out[2] = in[2]*ilength;

 return length;
}
