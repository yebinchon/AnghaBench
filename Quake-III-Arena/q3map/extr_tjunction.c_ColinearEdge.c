
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;
typedef int qboolean ;


 float DotProduct (int ,int ) ;
 float VectorLength (int ) ;
 float VectorNormalize (int ,int ) ;
 int VectorScale (int ,float,int ) ;
 int VectorSubtract (int ,int ,int ) ;
 int qfalse ;
 int qtrue ;

qboolean ColinearEdge( vec3_t v1, vec3_t v2, vec3_t v3 ) {
 vec3_t midpoint, dir, offset, on;
 float d;

 VectorSubtract( v2, v1, midpoint );
 VectorSubtract( v3, v1, dir );
 d = VectorNormalize( dir, dir );
 if ( d == 0 ) {
  return qfalse;
 }

 d = DotProduct( midpoint, dir );
 VectorScale( dir, d, on );
 VectorSubtract( midpoint, on, offset );
 d = VectorLength ( offset );

 if ( d < 0.1 ) {
  return qtrue;
 }

 return qfalse;
}
