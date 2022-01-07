
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_13__ ;
typedef struct TYPE_24__ TYPE_10__ ;


typedef size_t weapon_t ;
struct TYPE_29__ {scalar_t__* flashDlightColor; scalar_t__ weaponModel; scalar_t__ flashModel; scalar_t__ barrelModel; scalar_t__ readySound; scalar_t__ firingSound; } ;
typedef TYPE_4__ weaponInfo_t ;
typedef int* vec3_t ;
struct TYPE_30__ {int* shaderRGBA; int origin; int axis; scalar_t__ hModel; int renderfx; int shadowPlane; int lightingOrigin; } ;
typedef TYPE_5__ refEntity_t ;
typedef int playerState_t ;
typedef int gun ;
typedef int flash ;
struct TYPE_31__ {int* color1; } ;
typedef TYPE_6__ clientInfo_t ;
struct TYPE_28__ {size_t weapon; int eFlags; scalar_t__ number; size_t clientNum; int powerups; } ;
struct TYPE_27__ {int railgunFlash; int lightningFiring; } ;
struct TYPE_32__ {scalar_t__ muzzleFlashTime; TYPE_3__ currentState; TYPE_2__ pe; int lerpOrigin; } ;
typedef TYPE_7__ centity_t ;
typedef int barrel ;
struct TYPE_26__ {size_t weapon; scalar_t__ weaponstate; scalar_t__ clientNum; scalar_t__ weaponTime; } ;
struct TYPE_25__ {scalar_t__ time; TYPE_1__ predictedPlayerState; scalar_t__ renderingThirdPerson; } ;
struct TYPE_24__ {TYPE_6__* clientinfo; } ;


 int AnglesToAxis (int*,int ) ;
 int CG_AddWeaponWithPowerups (TYPE_5__*,int ) ;
 int CG_LightningBolt (TYPE_7__*,int ) ;
 int CG_MachinegunSpinAngle (TYPE_7__*) ;
 int CG_PositionEntityOnTag (TYPE_5__*,TYPE_5__*,scalar_t__,char*) ;
 int CG_PositionRotatedEntityOnTag (TYPE_5__*,TYPE_5__*,scalar_t__,char*) ;
 int CG_RegisterWeapon (size_t) ;
 int CG_SpawnRailTrail (TYPE_7__*,int ) ;
 int EF_FIRING ;
 scalar_t__ MUZZLE_FLASH_TIME ;
 size_t PITCH ;
 size_t ROLL ;
 int VectorCopy (int ,int ) ;
 scalar_t__ WEAPON_FIRING ;
 size_t WP_GAUNTLET ;
 size_t WP_GRAPPLING_HOOK ;
 size_t WP_LIGHTNING ;
 size_t WP_RAILGUN ;
 size_t YAW ;
 TYPE_13__ cg ;
 TYPE_7__* cg_entities ;
 TYPE_4__* cg_weapons ;
 TYPE_10__ cgs ;
 int crandom () ;
 int memset (TYPE_5__*,int ,int) ;
 int qfalse ;
 int qtrue ;
 int rand () ;
 int trap_R_AddLightToScene (int ,int,scalar_t__,scalar_t__,scalar_t__) ;
 int trap_R_AddRefEntityToScene (TYPE_5__*) ;
 int trap_S_AddLoopingSound (scalar_t__,int ,int ,scalar_t__) ;
 int vec3_origin ;

void CG_AddPlayerWeapon( refEntity_t *parent, playerState_t *ps, centity_t *cent, int team ) {
 refEntity_t gun;
 refEntity_t barrel;
 refEntity_t flash;
 vec3_t angles;
 weapon_t weaponNum;
 weaponInfo_t *weapon;
 centity_t *nonPredictedCent;


 weaponNum = cent->currentState.weapon;

 CG_RegisterWeapon( weaponNum );
 weapon = &cg_weapons[weaponNum];


 memset( &gun, 0, sizeof( gun ) );
 VectorCopy( parent->lightingOrigin, gun.lightingOrigin );
 gun.shadowPlane = parent->shadowPlane;
 gun.renderfx = parent->renderfx;


 if ( ps ) {
  if ( cg.predictedPlayerState.weapon == WP_RAILGUN
   && cg.predictedPlayerState.weaponstate == WEAPON_FIRING ) {
   float f;

   f = (float)cg.predictedPlayerState.weaponTime / 1500;
   gun.shaderRGBA[1] = 0;
   gun.shaderRGBA[0] =
   gun.shaderRGBA[2] = 255 * ( 1.0 - f );
  } else {
   gun.shaderRGBA[0] = 255;
   gun.shaderRGBA[1] = 255;
   gun.shaderRGBA[2] = 255;
   gun.shaderRGBA[3] = 255;
  }
 }

 gun.hModel = weapon->weaponModel;
 if (!gun.hModel) {
  return;
 }

 if ( !ps ) {

  cent->pe.lightningFiring = qfalse;
  if ( ( cent->currentState.eFlags & EF_FIRING ) && weapon->firingSound ) {

   trap_S_AddLoopingSound( cent->currentState.number, cent->lerpOrigin, vec3_origin, weapon->firingSound );
   cent->pe.lightningFiring = qtrue;
  } else if ( weapon->readySound ) {
   trap_S_AddLoopingSound( cent->currentState.number, cent->lerpOrigin, vec3_origin, weapon->readySound );
  }
 }

 CG_PositionEntityOnTag( &gun, parent, parent->hModel, "tag_weapon");

 CG_AddWeaponWithPowerups( &gun, cent->currentState.powerups );


 if ( weapon->barrelModel ) {
  memset( &barrel, 0, sizeof( barrel ) );
  VectorCopy( parent->lightingOrigin, barrel.lightingOrigin );
  barrel.shadowPlane = parent->shadowPlane;
  barrel.renderfx = parent->renderfx;

  barrel.hModel = weapon->barrelModel;
  angles[YAW] = 0;
  angles[PITCH] = 0;
  angles[ROLL] = CG_MachinegunSpinAngle( cent );
  AnglesToAxis( angles, barrel.axis );

  CG_PositionRotatedEntityOnTag( &barrel, &gun, weapon->weaponModel, "tag_barrel" );

  CG_AddWeaponWithPowerups( &barrel, cent->currentState.powerups );
 }


 nonPredictedCent = &cg_entities[cent->currentState.clientNum];




 if( ( nonPredictedCent - cg_entities ) != cent->currentState.clientNum ) {
  nonPredictedCent = cent;
 }


 if ( ( weaponNum == WP_LIGHTNING || weaponNum == WP_GAUNTLET || weaponNum == WP_GRAPPLING_HOOK )
  && ( nonPredictedCent->currentState.eFlags & EF_FIRING ) )
 {

 } else {

  if ( cg.time - cent->muzzleFlashTime > MUZZLE_FLASH_TIME && !cent->pe.railgunFlash ) {
   return;
  }
 }

 memset( &flash, 0, sizeof( flash ) );
 VectorCopy( parent->lightingOrigin, flash.lightingOrigin );
 flash.shadowPlane = parent->shadowPlane;
 flash.renderfx = parent->renderfx;

 flash.hModel = weapon->flashModel;
 if (!flash.hModel) {
  return;
 }
 angles[YAW] = 0;
 angles[PITCH] = 0;
 angles[ROLL] = crandom() * 10;
 AnglesToAxis( angles, flash.axis );


 if ( weaponNum == WP_RAILGUN ) {
  clientInfo_t *ci;

  ci = &cgs.clientinfo[ cent->currentState.clientNum ];
  flash.shaderRGBA[0] = 255 * ci->color1[0];
  flash.shaderRGBA[1] = 255 * ci->color1[1];
  flash.shaderRGBA[2] = 255 * ci->color1[2];
 }

 CG_PositionRotatedEntityOnTag( &flash, &gun, weapon->weaponModel, "tag_flash");
 trap_R_AddRefEntityToScene( &flash );

 if ( ps || cg.renderingThirdPerson ||
  cent->currentState.number != cg.predictedPlayerState.clientNum ) {

  CG_LightningBolt( nonPredictedCent, flash.origin );


  CG_SpawnRailTrail( cent, flash.origin );

  if ( weapon->flashDlightColor[0] || weapon->flashDlightColor[1] || weapon->flashDlightColor[2] ) {
   trap_R_AddLightToScene( flash.origin, 300 + (rand()&31), weapon->flashDlightColor[0],
    weapon->flashDlightColor[1], weapon->flashDlightColor[2] );
  }
 }
}
