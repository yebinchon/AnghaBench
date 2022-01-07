
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* vec3_t ;


 float VectorLength (float*) ;
 float fabs (float) ;

float RadiusFromBounds( const vec3_t mins, const vec3_t maxs ) {
 int i;
 vec3_t corner;
 float a, b;

 for (i=0 ; i<3 ; i++) {
  a = fabs( mins[i] );
  b = fabs( maxs[i] );
  corner[i] = a > b ? a : b;
 }

 return VectorLength (corner);
}
