
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int weaponInfo_t ;
typedef int vec3_t ;
struct TYPE_12__ {int* origin; int* oldorigin; int* shaderRGBA; int axis; int customShader; int reType; } ;
typedef TYPE_2__ refEntity_t ;
struct TYPE_13__ {size_t otherEntityNum; int pos; } ;
typedef TYPE_3__ entityState_t ;
struct TYPE_14__ {TYPE_3__ currentState; int trailTime; } ;
typedef TYPE_4__ centity_t ;
typedef int beam ;
struct TYPE_17__ {int time; } ;
struct TYPE_16__ {int lerpAngles; int lerpOrigin; } ;
struct TYPE_11__ {int lightningShader; } ;
struct TYPE_15__ {TYPE_1__ media; } ;


 int AngleVectors (int ,int ,int *,int ) ;
 int AxisClear (int ) ;
 int BG_EvaluateTrajectory (int *,int ,int ) ;
 int Distance (int*,int*) ;
 int RT_LIGHTNING ;
 int VectorCopy (int ,int*) ;
 int VectorMA (int*,int,int ,int*) ;
 TYPE_9__ cg ;
 TYPE_8__* cg_entities ;
 TYPE_7__ cgs ;
 int memset (TYPE_2__*,int ,int) ;
 int trap_R_AddRefEntityToScene (TYPE_2__*) ;

void CG_GrappleTrail( centity_t *ent, const weaponInfo_t *wi ) {
 vec3_t origin;
 entityState_t *es;
 vec3_t forward, up;
 refEntity_t beam;

 es = &ent->currentState;

 BG_EvaluateTrajectory( &es->pos, cg.time, origin );
 ent->trailTime = cg.time;

 memset( &beam, 0, sizeof( beam ) );

 VectorCopy ( cg_entities[ ent->currentState.otherEntityNum ].lerpOrigin, beam.origin );
 beam.origin[2] += 26;
 AngleVectors( cg_entities[ ent->currentState.otherEntityNum ].lerpAngles, forward, ((void*)0), up );
 VectorMA( beam.origin, -6, up, beam.origin );
 VectorCopy( origin, beam.oldorigin );

 if (Distance( beam.origin, beam.oldorigin ) < 64 )
  return;

 beam.reType = RT_LIGHTNING;
 beam.customShader = cgs.media.lightningShader;

 AxisClear( beam.axis );
 beam.shaderRGBA[0] = 0xff;
 beam.shaderRGBA[1] = 0xff;
 beam.shaderRGBA[2] = 0xff;
 beam.shaderRGBA[3] = 0xff;
 trap_R_AddRefEntityToScene( &beam );
}
