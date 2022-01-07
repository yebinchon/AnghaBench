
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_6__ {scalar_t__* origin; scalar_t__* oldorigin; } ;
typedef TYPE_2__ refEntity_t ;
struct TYPE_8__ {TYPE_1__* currentEntity; } ;
struct TYPE_7__ {int whiteImage; } ;
struct TYPE_5__ {TYPE_2__ e; } ;


 int GLS_DSTBLEND_ONE ;
 int GLS_SRCBLEND_ONE ;
 int GL_Bind (int ) ;
 int GL_State (int) ;
 int GL_TRIANGLE_STRIP ;
 int NUM_BEAM_SEGS ;
 int PerpendicularVector (scalar_t__*,scalar_t__*) ;
 int RotatePointAroundVector (scalar_t__*,scalar_t__*,scalar_t__*,double) ;
 int VectorAdd (scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ VectorNormalize (scalar_t__*) ;
 int VectorScale (scalar_t__*,int,scalar_t__*) ;
 TYPE_4__ backEnd ;
 int qglBegin (int ) ;
 int qglColor3f (int,int ,int ) ;
 int qglEnd () ;
 int qglVertex3fv (scalar_t__*) ;
 TYPE_3__ tr ;

void RB_SurfaceBeam( void )
{

 refEntity_t *e;
 int i;
 vec3_t perpvec;
 vec3_t direction, normalized_direction;
 vec3_t start_points[6], end_points[6];
 vec3_t oldorigin, origin;

 e = &backEnd.currentEntity->e;

 oldorigin[0] = e->oldorigin[0];
 oldorigin[1] = e->oldorigin[1];
 oldorigin[2] = e->oldorigin[2];

 origin[0] = e->origin[0];
 origin[1] = e->origin[1];
 origin[2] = e->origin[2];

 normalized_direction[0] = direction[0] = oldorigin[0] - origin[0];
 normalized_direction[1] = direction[1] = oldorigin[1] - origin[1];
 normalized_direction[2] = direction[2] = oldorigin[2] - origin[2];

 if ( VectorNormalize( normalized_direction ) == 0 )
  return;

 PerpendicularVector( perpvec, normalized_direction );

 VectorScale( perpvec, 4, perpvec );

 for ( i = 0; i < 6 ; i++ )
 {
  RotatePointAroundVector( start_points[i], normalized_direction, perpvec, (360.0/6)*i );

  VectorAdd( start_points[i], direction, end_points[i] );
 }

 GL_Bind( tr.whiteImage );

 GL_State( GLS_SRCBLEND_ONE | GLS_DSTBLEND_ONE );

 qglColor3f( 1, 0, 0 );

 qglBegin( GL_TRIANGLE_STRIP );
 for ( i = 0; i <= 6; i++ ) {
  qglVertex3fv( start_points[ i % 6] );
  qglVertex3fv( end_points[ i % 6] );
 }
 qglEnd();
}
