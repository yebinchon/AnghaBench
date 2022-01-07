
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef int* vec3_t ;
struct TYPE_22__ {int* lightingOrigin; int hModel; int * axis; int backlerp; int frame; int oldframe; int renderfx; int shadowPlane; int customSkin; } ;
typedef TYPE_5__ refEntity_t ;
typedef int qhandle_t ;
typedef int pole ;
typedef int flag ;
typedef int clientInfo_t ;
struct TYPE_17__ {int yawAngle; int backlerp; int frame; int oldFrame; int yawing; } ;
struct TYPE_21__ {TYPE_10__ flag; } ;
struct TYPE_19__ {int* trDelta; } ;
struct TYPE_20__ {int legsAnim; size_t clientNum; TYPE_2__ pos; } ;
struct TYPE_23__ {TYPE_4__ pe; TYPE_3__ currentState; } ;
typedef TYPE_6__ centity_t ;
struct TYPE_18__ {int flagFlapModel; int flagPoleModel; } ;
struct TYPE_24__ {int * clientinfo; TYPE_1__ media; } ;


 int ANIM_TOGGLEBIT ;
 int AnglesToAxis (int*,int *) ;
 int CG_PositionEntityOnTag (TYPE_5__*,TYPE_5__*,int ,char*) ;
 int CG_PositionRotatedEntityOnTag (TYPE_5__*,TYPE_5__*,int ,char*) ;
 int CG_RunLerpFrame (int *,TYPE_10__*,int,int) ;
 int CG_SwingAngles (int,int,int,float,int*,int *) ;
 float DotProduct (int ,int*) ;
 int FLAG_RUN ;
 int FLAG_STAND ;
 int LEGS_IDLE ;
 int LEGS_IDLECR ;
 int LEGS_WALK ;
 int LEGS_WALKCR ;
 float M_PI ;
 int VectorClear (int*) ;
 int VectorCopy (int*,int*) ;
 int VectorNormalize (int*) ;
 size_t YAW ;
 float acos (float) ;
 TYPE_9__ cgs ;
 double fabs (float) ;
 int memset (TYPE_5__*,int ,int) ;
 int qfalse ;
 int qtrue ;
 int trap_R_AddRefEntityToScene (TYPE_5__*) ;

__attribute__((used)) static void CG_PlayerFlag( centity_t *cent, qhandle_t hSkin, refEntity_t *torso ) {
 clientInfo_t *ci;
 refEntity_t pole;
 refEntity_t flag;
 vec3_t angles, dir;
 int legsAnim, flagAnim, updateangles;
 float angle, d;


 memset( &pole, 0, sizeof(pole) );
 pole.hModel = cgs.media.flagPoleModel;
 VectorCopy( torso->lightingOrigin, pole.lightingOrigin );
 pole.shadowPlane = torso->shadowPlane;
 pole.renderfx = torso->renderfx;
 CG_PositionEntityOnTag( &pole, torso, torso->hModel, "tag_flag" );
 trap_R_AddRefEntityToScene( &pole );


 memset( &flag, 0, sizeof(flag) );
 flag.hModel = cgs.media.flagFlapModel;
 flag.customSkin = hSkin;
 VectorCopy( torso->lightingOrigin, flag.lightingOrigin );
 flag.shadowPlane = torso->shadowPlane;
 flag.renderfx = torso->renderfx;

 VectorClear(angles);

 updateangles = qfalse;
 legsAnim = cent->currentState.legsAnim & ~ANIM_TOGGLEBIT;
 if( legsAnim == LEGS_IDLE || legsAnim == LEGS_IDLECR ) {
  flagAnim = FLAG_STAND;
 } else if ( legsAnim == LEGS_WALK || legsAnim == LEGS_WALKCR ) {
  flagAnim = FLAG_STAND;
  updateangles = qtrue;
 } else {
  flagAnim = FLAG_RUN;
  updateangles = qtrue;
 }

 if ( updateangles ) {

  VectorCopy( cent->currentState.pos.trDelta, dir );

  dir[2] += 100;
  VectorNormalize( dir );
  d = DotProduct(pole.axis[2], dir);

  if (fabs(d) < 0.9) {

   d = DotProduct(pole.axis[0], dir);
   if (d > 1.0f) {
    d = 1.0f;
   }
   else if (d < -1.0f) {
    d = -1.0f;
   }
   angle = acos(d);

   d = DotProduct(pole.axis[1], dir);
   if (d < 0) {
    angles[YAW] = 360 - angle * 180 / M_PI;
   }
   else {
    angles[YAW] = angle * 180 / M_PI;
   }
   if (angles[YAW] < 0)
    angles[YAW] += 360;
   if (angles[YAW] > 360)
    angles[YAW] -= 360;




   CG_SwingAngles( angles[YAW], 25, 90, 0.15f, &cent->pe.flag.yawAngle, &cent->pe.flag.yawing );
  }
 }


 angles[YAW] = cent->pe.flag.yawAngle;

 ci = &cgs.clientinfo[ cent->currentState.clientNum ];
 CG_RunLerpFrame( ci, &cent->pe.flag, flagAnim, 1 );
 flag.oldframe = cent->pe.flag.oldFrame;
 flag.frame = cent->pe.flag.frame;
 flag.backlerp = cent->pe.flag.backlerp;

 AnglesToAxis( angles, flag.axis );
 CG_PositionRotatedEntityOnTag( &flag, &pole, pole.hModel, "tag_flag" );

 trap_R_AddRefEntityToScene( &flag );
}
