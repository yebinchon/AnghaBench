
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 float DotProduct (int ,float*) ;
 float SURFACE_CLIP_EPSILON ;
 int qfalse ;
 int qtrue ;

int CM_CheckFacetPlane(float *plane, vec3_t start, vec3_t end, float *enterFrac, float *leaveFrac, int *hit) {
 float d1, d2, f;

 *hit = qfalse;

 d1 = DotProduct( start, plane ) - plane[3];
 d2 = DotProduct( end, plane ) - plane[3];


 if (d1 > 0 && ( d2 >= SURFACE_CLIP_EPSILON || d2 >= d1 ) ) {
  return qfalse;
 }


 if (d1 <= 0 && d2 <= 0 ) {
  return qtrue;
 }


 if (d1 > d2) {
  f = (d1-SURFACE_CLIP_EPSILON) / (d1-d2);
  if ( f < 0 ) {
   f = 0;
  }

  if (f > *enterFrac) {
   *enterFrac = f;
   *hit = qtrue;
  }
 } else {
  f = (d1+SURFACE_CLIP_EPSILON) / (d1-d2);
  if ( f > 1 ) {
   f = 1;
  }
  if (f < *leaveFrac) {
   *leaveFrac = f;
  }
 }
 return qtrue;
}
