
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int numpoints; int ** p; } ;
typedef TYPE_1__ winding_t ;
typedef int * vec3_t ;
typedef scalar_t__ qboolean ;


 int CrossProduct (int *,int *,int *) ;
 float DotProduct (int * const,int *) ;
 int MAX_POINTS_ON_WINDING ;
 int VectorCopy (int *,int *) ;
 double VectorNormalize (int *,int *) ;
 int VectorSubtract (int *,int * const,int *) ;
 int _printf (char*,float,int ,int ,int ,int ,int ,int ) ;
 float acos (float) ;
 scalar_t__ qtrue ;

float PointToPolygonFormFactor( const vec3_t point, const vec3_t normal, const winding_t *w ) {
 vec3_t triVector, triNormal;
 int i, j;
 vec3_t dirs[MAX_POINTS_ON_WINDING];
 float total;
 float dot, angle, facing;

 for ( i = 0 ; i < w->numpoints ; i++ ) {
  VectorSubtract( w->p[i], point, dirs[i] );
  VectorNormalize( dirs[i], dirs[i] );
 }


 VectorCopy( dirs[0], dirs[i] );

 total = 0;
 for ( i = 0 ; i < w->numpoints ; i++ ) {
  j = i+1;
  dot = DotProduct( dirs[i], dirs[j] );


  if ( dot > 1.0 ) {
   dot = 1.0;
  } else if ( dot < -1.0 ) {
   dot = -1.0;
  }

  angle = acos( dot );
  CrossProduct( dirs[i], dirs[j], triVector );
  if ( VectorNormalize( triVector, triNormal ) < 0.0001 ) {
   continue;
  }
  facing = DotProduct( normal, triNormal );
  total += facing * angle;

  if ( total > 6.3 || total < -6.3 ) {
   static qboolean printed;

   if ( !printed ) {
    printed = qtrue;
    _printf( "WARNING: bad PointToPolygonFormFactor: %f at %1.1f %1.1f %1.1f from %1.1f %1.1f %1.1f\n", total,
     w->p[i][0], w->p[i][1], w->p[i][2], point[0], point[1], point[2]);
   }
   return 0;
  }

 }

 total /= 2*3.141592657;

 return total;
}
