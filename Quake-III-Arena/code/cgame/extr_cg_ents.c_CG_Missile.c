
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_16__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct TYPE_21__ {int missileRenderfx; int missileModel; scalar_t__ missileSound; int * missileDlightColor; scalar_t__ missileDlight; int (* missileTrailFunc ) (TYPE_5__*,TYPE_2__ const*) ;} ;
typedef TYPE_2__ weaponInfo_t ;
typedef int vec3_t ;
struct TYPE_22__ {int radius; int skinNum; int renderfx; int** axis; int hModel; int customShader; scalar_t__ rotation; int reType; int oldorigin; int origin; } ;
typedef TYPE_3__ refEntity_t ;
struct TYPE_19__ {scalar_t__ trType; int trDelta; } ;
struct TYPE_23__ {size_t weapon; scalar_t__ generic1; int time; TYPE_16__ pos; int number; int angles; } ;
typedef TYPE_4__ entityState_t ;
typedef int ent ;
struct TYPE_24__ {int lerpAngles; TYPE_4__ currentState; int lerpOrigin; } ;
typedef TYPE_5__ centity_t ;
struct TYPE_20__ {int blueProxMine; int plasmaBallShader; } ;
struct TYPE_18__ {int time; int clientFrame; } ;
struct TYPE_17__ {TYPE_1__ media; } ;


 int AnglesToAxis (int ,int**) ;
 int BG_EvaluateTrajectoryDelta (TYPE_16__*,int,int ) ;
 int CG_AddRefEntityWithPowerups (TYPE_3__*,TYPE_4__*,int ) ;
 int RF_NOSHADOW ;
 int RT_SPRITE ;
 int RotateAroundDirection (int**,int) ;
 scalar_t__ TEAM_BLUE ;
 int TEAM_FREE ;
 scalar_t__ TR_STATIONARY ;
 int VectorCopy (int ,int ) ;
 scalar_t__ VectorNormalize2 (int ,int*) ;
 size_t WP_NUM_WEAPONS ;
 scalar_t__ WP_PLASMAGUN ;
 size_t WP_PROX_LAUNCHER ;
 TYPE_12__ cg ;
 TYPE_2__* cg_weapons ;
 TYPE_10__ cgs ;
 int memset (TYPE_3__*,int ,int) ;
 int stub1 (TYPE_5__*,TYPE_2__ const*) ;
 int trap_R_AddLightToScene (int ,scalar_t__,int ,int ,int ) ;
 int trap_R_AddRefEntityToScene (TYPE_3__*) ;
 int trap_S_AddLoopingSound (int ,int ,int ,scalar_t__) ;

__attribute__((used)) static void CG_Missile( centity_t *cent ) {
 refEntity_t ent;
 entityState_t *s1;
 const weaponInfo_t *weapon;


 s1 = &cent->currentState;
 if ( s1->weapon > WP_NUM_WEAPONS ) {
  s1->weapon = 0;
 }
 weapon = &cg_weapons[s1->weapon];


 VectorCopy( s1->angles, cent->lerpAngles);


 if ( weapon->missileTrailFunc )
 {
  weapon->missileTrailFunc( cent, weapon );
 }
 if ( weapon->missileDlight ) {
  trap_R_AddLightToScene(cent->lerpOrigin, weapon->missileDlight,
   weapon->missileDlightColor[0], weapon->missileDlightColor[1], weapon->missileDlightColor[2] );
 }


 if ( weapon->missileSound ) {
  vec3_t velocity;

  BG_EvaluateTrajectoryDelta( &cent->currentState.pos, cg.time, velocity );

  trap_S_AddLoopingSound( cent->currentState.number, cent->lerpOrigin, velocity, weapon->missileSound );
 }


 memset (&ent, 0, sizeof(ent));
 VectorCopy( cent->lerpOrigin, ent.origin);
 VectorCopy( cent->lerpOrigin, ent.oldorigin);

 if ( cent->currentState.weapon == WP_PLASMAGUN ) {
  ent.reType = RT_SPRITE;
  ent.radius = 16;
  ent.rotation = 0;
  ent.customShader = cgs.media.plasmaBallShader;
  trap_R_AddRefEntityToScene( &ent );
  return;
 }


 ent.skinNum = cg.clientFrame & 1;
 ent.hModel = weapon->missileModel;
 ent.renderfx = weapon->missileRenderfx | RF_NOSHADOW;
 if ( VectorNormalize2( s1->pos.trDelta, ent.axis[0] ) == 0 ) {
  ent.axis[0][2] = 1;
 }


 if ( s1->pos.trType != TR_STATIONARY ) {
  RotateAroundDirection( ent.axis, cg.time / 4 );
 } else {






  {
   RotateAroundDirection( ent.axis, s1->time );
  }
 }


 CG_AddRefEntityWithPowerups( &ent, s1, TEAM_FREE );
}
