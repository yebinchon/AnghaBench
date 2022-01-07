
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vec3_t ;
typedef int qboolean ;
struct TYPE_3__ {int normal; int dist; } ;
typedef TYPE_1__ plane_t ;


 int CrossProduct (int ,int ,int ) ;
 int DotProduct (int const,int ) ;
 scalar_t__ VectorNormalize (int ,int ) ;
 int VectorSubtract (int const,int const,int ) ;
 int qfalse ;
 int qtrue ;

qboolean VL_PlaneFromPoints( plane_t *plane, const vec3_t a, const vec3_t b, const vec3_t c ) {
 vec3_t d1, d2;

 VectorSubtract( b, a, d1 );
 VectorSubtract( c, a, d2 );
 CrossProduct( d2, d1, plane->normal );
 if ( VectorNormalize( plane->normal, plane->normal ) == 0 ) {
  return qfalse;
 }

 plane->dist = DotProduct( a, plane->normal );
 return qtrue;
}
