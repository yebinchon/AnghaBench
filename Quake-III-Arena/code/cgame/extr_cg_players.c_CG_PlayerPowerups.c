
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int refEntity_t ;
struct TYPE_12__ {scalar_t__ newAnims; } ;
typedef TYPE_3__ clientInfo_t ;
struct TYPE_10__ {int powerups; size_t clientNum; int number; } ;
struct TYPE_13__ {int lerpOrigin; TYPE_1__ currentState; } ;
typedef TYPE_4__ centity_t ;
struct TYPE_11__ {int neutralFlagModel; int neutralFlagFlapSkin; int blueFlagModel; int blueFlagFlapSkin; int redFlagModel; int redFlagFlapSkin; int flightSound; } ;
struct TYPE_14__ {TYPE_2__ media; TYPE_3__* clientinfo; } ;


 int CG_HasteTrail (TYPE_4__*) ;
 int CG_PlayerFlag (TYPE_4__*,int ,int *) ;
 int CG_TrailItem (TYPE_4__*,int ) ;
 int PW_BLUEFLAG ;
 int PW_FLIGHT ;
 int PW_HASTE ;
 int PW_NEUTRALFLAG ;
 int PW_QUAD ;
 int PW_REDFLAG ;
 TYPE_5__ cgs ;
 int rand () ;
 int trap_R_AddLightToScene (int ,int,double,double,double) ;
 int trap_S_AddLoopingSound (int ,int ,int ,int ) ;
 int vec3_origin ;

__attribute__((used)) static void CG_PlayerPowerups( centity_t *cent, refEntity_t *torso ) {
 int powerups;
 clientInfo_t *ci;

 powerups = cent->currentState.powerups;
 if ( !powerups ) {
  return;
 }


 if ( powerups & ( 1 << PW_QUAD ) ) {
  trap_R_AddLightToScene( cent->lerpOrigin, 200 + (rand()&31), 0.2f, 0.2f, 1 );
 }


 if ( powerups & ( 1 << PW_FLIGHT ) ) {
  trap_S_AddLoopingSound( cent->currentState.number, cent->lerpOrigin, vec3_origin, cgs.media.flightSound );
 }

 ci = &cgs.clientinfo[ cent->currentState.clientNum ];

 if ( powerups & ( 1 << PW_REDFLAG ) ) {
  if (ci->newAnims) {
   CG_PlayerFlag( cent, cgs.media.redFlagFlapSkin, torso );
  }
  else {
   CG_TrailItem( cent, cgs.media.redFlagModel );
  }
  trap_R_AddLightToScene( cent->lerpOrigin, 200 + (rand()&31), 1.0, 0.2f, 0.2f );
 }


 if ( powerups & ( 1 << PW_BLUEFLAG ) ) {
  if (ci->newAnims){
   CG_PlayerFlag( cent, cgs.media.blueFlagFlapSkin, torso );
  }
  else {
   CG_TrailItem( cent, cgs.media.blueFlagModel );
  }
  trap_R_AddLightToScene( cent->lerpOrigin, 200 + (rand()&31), 0.2f, 0.2f, 1.0 );
 }


 if ( powerups & ( 1 << PW_NEUTRALFLAG ) ) {
  if (ci->newAnims) {
   CG_PlayerFlag( cent, cgs.media.neutralFlagFlapSkin, torso );
  }
  else {
   CG_TrailItem( cent, cgs.media.neutralFlagModel );
  }
  trap_R_AddLightToScene( cent->lerpOrigin, 200 + (rand()&31), 1.0, 1.0, 1.0 );
 }


 if ( powerups & ( 1 << PW_HASTE ) ) {
  CG_HasteTrail( cent );
 }
}
