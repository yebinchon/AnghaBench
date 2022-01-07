
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_11__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef int* vec3_t ;
struct TYPE_19__ {int* endpos; double fraction; } ;
typedef TYPE_4__ trace_t ;
struct TYPE_20__ {int* oldorigin; int* origin; int axis; int hModel; int customShader; int reType; } ;
typedef TYPE_5__ refEntity_t ;
struct TYPE_17__ {scalar_t__ weapon; int number; } ;
struct TYPE_21__ {float* lerpAngles; int* lerpOrigin; TYPE_2__ currentState; } ;
typedef TYPE_6__ centity_t ;
typedef int beam ;
struct TYPE_18__ {int lightningExplosionModel; int lightningShader; } ;
struct TYPE_22__ {TYPE_3__ media; } ;
struct TYPE_16__ {int clientNum; } ;
struct TYPE_15__ {float* refdefViewAngles; TYPE_1__ predictedPlayerState; } ;
struct TYPE_14__ {double value; } ;


 int AngleVectors (int*,int*,int *,int *) ;
 int AnglesToAxis (int*,int ) ;
 int CG_Trace (TYPE_4__*,int*,int ,int ,int*,int ,int ) ;
 scalar_t__ DEFAULT_VIEWHEIGHT ;
 int LIGHTNING_RANGE ;
 int MASK_SHOT ;
 int RT_LIGHTNING ;
 int VectorCopy (int*,int*) ;
 int VectorMA (int*,int,int*,int*) ;
 int VectorNormalize (int*) ;
 int VectorSubtract (int*,int*,int*) ;
 scalar_t__ WP_LIGHTNING ;
 TYPE_11__ cg ;
 TYPE_10__ cg_trueLightning ;
 TYPE_9__ cgs ;
 int memset (TYPE_5__*,int ,int) ;
 int rand () ;
 int trap_R_AddRefEntityToScene (TYPE_5__*) ;
 int vec3_origin ;

__attribute__((used)) static void CG_LightningBolt( centity_t *cent, vec3_t origin ) {
 trace_t trace;
 refEntity_t beam;
 vec3_t forward;
 vec3_t muzzlePoint, endPoint;

 if (cent->currentState.weapon != WP_LIGHTNING) {
  return;
 }

 memset( &beam, 0, sizeof( beam ) );


 if ((cent->currentState.number == cg.predictedPlayerState.clientNum) && (cg_trueLightning.value != 0)) {
  vec3_t angle;
  int i;

  for (i = 0; i < 3; i++) {
   float a = cent->lerpAngles[i] - cg.refdefViewAngles[i];
   if (a > 180) {
    a -= 360;
   }
   if (a < -180) {
    a += 360;
   }

   angle[i] = cg.refdefViewAngles[i] + a * (1.0 - cg_trueLightning.value);
   if (angle[i] < 0) {
    angle[i] += 360;
   }
   if (angle[i] > 360) {
    angle[i] -= 360;
   }
  }

  AngleVectors(angle, forward, ((void*)0), ((void*)0) );
  VectorCopy(cent->lerpOrigin, muzzlePoint );

 } else {

  AngleVectors( cent->lerpAngles, forward, ((void*)0), ((void*)0) );
  VectorCopy(cent->lerpOrigin, muzzlePoint );
 }


 muzzlePoint[2] += DEFAULT_VIEWHEIGHT;

 VectorMA( muzzlePoint, 14, forward, muzzlePoint );


 VectorMA( muzzlePoint, LIGHTNING_RANGE, forward, endPoint );


 CG_Trace( &trace, muzzlePoint, vec3_origin, vec3_origin, endPoint,
  cent->currentState.number, MASK_SHOT );


 VectorCopy( trace.endpos, beam.oldorigin );



 VectorCopy( origin, beam.origin );

 beam.reType = RT_LIGHTNING;
 beam.customShader = cgs.media.lightningShader;
 trap_R_AddRefEntityToScene( &beam );


 if ( trace.fraction < 1.0 ) {
  vec3_t angles;
  vec3_t dir;

  VectorSubtract( beam.oldorigin, beam.origin, dir );
  VectorNormalize( dir );

  memset( &beam, 0, sizeof( beam ) );
  beam.hModel = cgs.media.lightningExplosionModel;

  VectorMA( trace.endpos, -16, dir, beam.origin );


  angles[0] = rand() % 360;
  angles[1] = rand() % 360;
  angles[2] = rand() % 360;
  AnglesToAxis( angles, beam.axis );
  trap_R_AddRefEntityToScene( &beam );
 }
}
