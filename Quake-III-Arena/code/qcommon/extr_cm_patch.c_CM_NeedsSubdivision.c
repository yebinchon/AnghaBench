
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double* vec3_t ;
typedef int qboolean ;


 float SUBDIVIDE_DISTANCE ;
 float VectorLength (double*) ;
 int VectorSubtract (double*,double*,double*) ;

__attribute__((used)) static qboolean CM_NeedsSubdivision( vec3_t a, vec3_t b, vec3_t c ) {
 vec3_t cmid;
 vec3_t lmid;
 vec3_t delta;
 float dist;
 int i;


 for ( i = 0 ; i < 3 ; i++ ) {
  lmid[i] = 0.5*(a[i] + c[i]);
 }


 for ( i = 0 ; i < 3 ; i++ ) {
  cmid[i] = 0.5 * ( 0.5*(a[i] + b[i]) + 0.5*(b[i] + c[i]) );
 }


 VectorSubtract( cmid, lmid, delta );
 dist = VectorLength( delta );

 return dist >= SUBDIVIDE_DISTANCE;
}
