
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_15__ {int (* ejectBrassFunc ) (TYPE_5__*) ;scalar_t__* flashSound; } ;
typedef TYPE_3__ weaponInfo_t ;
struct TYPE_16__ {size_t weapon; int powerups; int number; } ;
typedef TYPE_4__ entityState_t ;
struct TYPE_13__ {scalar_t__ lightningFiring; } ;
struct TYPE_17__ {TYPE_4__ currentState; TYPE_1__ pe; int muzzleFlashTime; } ;
typedef TYPE_5__ centity_t ;
struct TYPE_19__ {scalar_t__ integer; } ;
struct TYPE_14__ {scalar_t__ quadSound; } ;
struct TYPE_18__ {TYPE_2__ media; } ;
struct TYPE_12__ {int time; } ;


 int CG_Error (char*) ;
 int CHAN_ITEM ;
 int CHAN_WEAPON ;
 int PW_QUAD ;
 size_t WP_LIGHTNING ;
 size_t WP_NONE ;
 size_t WP_NUM_WEAPONS ;
 TYPE_10__ cg ;
 TYPE_9__ cg_brassTime ;
 TYPE_3__* cg_weapons ;
 TYPE_7__ cgs ;
 int rand () ;
 int stub1 (TYPE_5__*) ;
 int trap_S_StartSound (int *,int ,int ,scalar_t__) ;

void CG_FireWeapon( centity_t *cent ) {
 entityState_t *ent;
 int c;
 weaponInfo_t *weap;

 ent = &cent->currentState;
 if ( ent->weapon == WP_NONE ) {
  return;
 }
 if ( ent->weapon >= WP_NUM_WEAPONS ) {
  CG_Error( "CG_FireWeapon: ent->weapon >= WP_NUM_WEAPONS" );
  return;
 }
 weap = &cg_weapons[ ent->weapon ];



 cent->muzzleFlashTime = cg.time;


 if ( ent->weapon == WP_LIGHTNING ) {
  if ( cent->pe.lightningFiring ) {
   return;
  }
 }


 if ( cent->currentState.powerups & ( 1 << PW_QUAD ) ) {
  trap_S_StartSound (((void*)0), cent->currentState.number, CHAN_ITEM, cgs.media.quadSound );
 }


 for ( c = 0 ; c < 4 ; c++ ) {
  if ( !weap->flashSound[c] ) {
   break;
  }
 }
 if ( c > 0 ) {
  c = rand() % c;
  if ( weap->flashSound[c] )
  {
   trap_S_StartSound( ((void*)0), ent->number, CHAN_WEAPON, weap->flashSound[c] );
  }
 }


 if ( weap->ejectBrassFunc && cg_brassTime.integer > 0 ) {
  weap->ejectBrassFunc( cent );
 }
}
