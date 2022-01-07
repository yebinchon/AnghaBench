
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;
typedef int qboolean ;


 float DotProduct (int ,int ) ;
 float VectorLength (int ) ;
 int VectorMA (int ,float,int ,int ) ;
 float VectorNormalize (int ,int ) ;
 int VectorSubtract (int ,int ,int ) ;
 int qfalse ;
 int qtrue ;

qboolean SphereCull( vec3_t start, vec3_t stop, vec3_t origin, float radius ) {
 vec3_t v;
 float d;
 vec3_t dir;
 float len;
 vec3_t on;

 VectorSubtract( stop, start, dir );
 len = VectorNormalize( dir, dir );

 VectorSubtract( origin, start, v );
 d = DotProduct( v, dir );
 if ( d > len + radius ) {
  return qtrue;
 }
 if ( d < -radius ) {
  return qtrue;
 }
 VectorMA( start, d, dir, on );

 VectorSubtract( on, origin, v );

 len = VectorLength( v );

 if ( len > radius ) {
  return qtrue;
 }

 return qfalse;
}
