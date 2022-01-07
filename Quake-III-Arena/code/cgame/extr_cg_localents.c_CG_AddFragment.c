
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_15__ ;


typedef float* vec3_t ;
struct TYPE_17__ {double fraction; int endpos; } ;
typedef TYPE_1__ trace_t ;
struct TYPE_19__ {float* origin; float* lightingOrigin; int axis; int renderfx; } ;
struct TYPE_16__ {scalar_t__ trType; } ;
struct TYPE_18__ {int endTime; int leFlags; scalar_t__ leBounceSoundType; TYPE_3__ refEntity; TYPE_15__ angles; TYPE_15__ pos; } ;
typedef TYPE_2__ localEntity_t ;
struct TYPE_20__ {int time; } ;


 int AnglesToAxis (float*,int ) ;
 int BG_EvaluateTrajectory (TYPE_15__*,int,float*) ;
 int CG_BloodTrail (TYPE_2__*) ;
 int CG_FragmentBounceMark (TYPE_2__*,TYPE_1__*) ;
 int CG_FragmentBounceSound (TYPE_2__*,TYPE_1__*) ;
 int CG_FreeLocalEntity (TYPE_2__*) ;
 int CG_ReflectVelocity (TYPE_2__*,TYPE_1__*) ;
 int CG_Trace (TYPE_1__*,float*,int *,int *,float*,int,int ) ;
 int CONTENTS_NODROP ;
 int CONTENTS_SOLID ;
 scalar_t__ LEBS_BLOOD ;
 int LEF_TUMBLE ;
 int RF_LIGHTING_ORIGIN ;
 int SINK_TIME ;
 scalar_t__ TR_STATIONARY ;
 int VectorCopy (float*,float*) ;
 TYPE_4__ cg ;
 int trap_CM_PointContents (int ,int ) ;
 int trap_R_AddRefEntityToScene (TYPE_3__*) ;

void CG_AddFragment( localEntity_t *le ) {
 vec3_t newOrigin;
 trace_t trace;

 if ( le->pos.trType == TR_STATIONARY ) {

  int t;
  float oldZ;

  t = le->endTime - cg.time;
  if ( t < SINK_TIME ) {



   VectorCopy( le->refEntity.origin, le->refEntity.lightingOrigin );
   le->refEntity.renderfx |= RF_LIGHTING_ORIGIN;
   oldZ = le->refEntity.origin[2];
   le->refEntity.origin[2] -= 16 * ( 1.0 - (float)t / SINK_TIME );
   trap_R_AddRefEntityToScene( &le->refEntity );
   le->refEntity.origin[2] = oldZ;
  } else {
   trap_R_AddRefEntityToScene( &le->refEntity );
  }

  return;
 }


 BG_EvaluateTrajectory( &le->pos, cg.time, newOrigin );


 CG_Trace( &trace, le->refEntity.origin, ((void*)0), ((void*)0), newOrigin, -1, CONTENTS_SOLID );
 if ( trace.fraction == 1.0 ) {

  VectorCopy( newOrigin, le->refEntity.origin );

  if ( le->leFlags & LEF_TUMBLE ) {
   vec3_t angles;

   BG_EvaluateTrajectory( &le->angles, cg.time, angles );
   AnglesToAxis( angles, le->refEntity.axis );
  }

  trap_R_AddRefEntityToScene( &le->refEntity );


  if ( le->leBounceSoundType == LEBS_BLOOD ) {
   CG_BloodTrail( le );
  }

  return;
 }




 if ( trap_CM_PointContents( trace.endpos, 0 ) & CONTENTS_NODROP ) {
  CG_FreeLocalEntity( le );
  return;
 }


 CG_FragmentBounceMark( le, &trace );


 CG_FragmentBounceSound( le, &trace );


 CG_ReflectVelocity( le, &trace );

 trap_R_AddRefEntityToScene( &le->refEntity );
}
