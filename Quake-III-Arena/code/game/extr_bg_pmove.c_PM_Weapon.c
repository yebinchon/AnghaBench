
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ giTag; } ;
struct TYPE_6__ {int buttons; int weapon; } ;
struct TYPE_9__ {TYPE_2__* ps; int gauntletHit; TYPE_1__ cmd; } ;
struct TYPE_8__ {scalar_t__ msec; } ;
struct TYPE_7__ {int pm_flags; scalar_t__* persistant; size_t* stats; int weapon; scalar_t__ weaponTime; scalar_t__ weaponstate; int* ammo; scalar_t__* powerups; } ;


 int BUTTON_ATTACK ;
 int BUTTON_USE_HOLDABLE ;
 scalar_t__ EV_FIRE_WEAPON ;
 scalar_t__ EV_NOAMMO ;
 scalar_t__ EV_USE_ITEM0 ;
 scalar_t__ HI_MEDKIT ;
 size_t PERS_TEAM ;
 int PMF_RESPAWNED ;
 int PMF_USE_ITEM_HELD ;
 int PM_AddEvent (scalar_t__) ;
 int PM_BeginWeaponChange (int) ;
 int PM_FinishWeaponChange () ;
 int PM_StartTorsoAnim (int ) ;
 scalar_t__ PW_AMMOREGEN ;
 size_t PW_HASTE ;
 scalar_t__ PW_SCOUT ;
 size_t STAT_HEALTH ;
 size_t STAT_HOLDABLE_ITEM ;
 size_t STAT_MAX_HEALTH ;
 size_t STAT_PERSISTANT_POWERUP ;
 scalar_t__ TEAM_SPECTATOR ;
 int TORSO_ATTACK ;
 int TORSO_ATTACK2 ;
 int TORSO_STAND ;
 int TORSO_STAND2 ;
 scalar_t__ WEAPON_DROPPING ;
 scalar_t__ WEAPON_FIRING ;
 scalar_t__ WEAPON_RAISING ;
 void* WEAPON_READY ;
 int WP_NONE ;





 TYPE_5__* bg_itemlist ;
 TYPE_4__* pm ;
 TYPE_3__ pml ;

__attribute__((used)) static void PM_Weapon( void ) {
 int addTime;


 if ( pm->ps->pm_flags & PMF_RESPAWNED ) {
  return;
 }


 if ( pm->ps->persistant[PERS_TEAM] == TEAM_SPECTATOR ) {
  return;
 }


 if ( pm->ps->stats[STAT_HEALTH] <= 0 ) {
  pm->ps->weapon = WP_NONE;
  return;
 }


 if ( pm->cmd.buttons & BUTTON_USE_HOLDABLE ) {
  if ( ! ( pm->ps->pm_flags & PMF_USE_ITEM_HELD ) ) {
   if ( bg_itemlist[pm->ps->stats[STAT_HOLDABLE_ITEM]].giTag == HI_MEDKIT
    && pm->ps->stats[STAT_HEALTH] >= (pm->ps->stats[STAT_MAX_HEALTH] + 25) ) {

   } else {
    pm->ps->pm_flags |= PMF_USE_ITEM_HELD;
    PM_AddEvent( EV_USE_ITEM0 + bg_itemlist[pm->ps->stats[STAT_HOLDABLE_ITEM]].giTag );
    pm->ps->stats[STAT_HOLDABLE_ITEM] = 0;
   }
   return;
  }
 } else {
  pm->ps->pm_flags &= ~PMF_USE_ITEM_HELD;
 }



 if ( pm->ps->weaponTime > 0 ) {
  pm->ps->weaponTime -= pml.msec;
 }




 if ( pm->ps->weaponTime <= 0 || pm->ps->weaponstate != WEAPON_FIRING ) {
  if ( pm->ps->weapon != pm->cmd.weapon ) {
   PM_BeginWeaponChange( pm->cmd.weapon );
  }
 }

 if ( pm->ps->weaponTime > 0 ) {
  return;
 }


 if ( pm->ps->weaponstate == WEAPON_DROPPING ) {
  PM_FinishWeaponChange();
  return;
 }

 if ( pm->ps->weaponstate == WEAPON_RAISING ) {
  pm->ps->weaponstate = WEAPON_READY;
  if ( pm->ps->weapon == 138 ) {
   PM_StartTorsoAnim( TORSO_STAND2 );
  } else {
   PM_StartTorsoAnim( TORSO_STAND );
  }
  return;
 }


 if ( ! (pm->cmd.buttons & BUTTON_ATTACK) ) {
  pm->ps->weaponTime = 0;
  pm->ps->weaponstate = WEAPON_READY;
  return;
 }


 if ( pm->ps->weapon == 138 ) {

  if ( !pm->gauntletHit ) {
   pm->ps->weaponTime = 0;
   pm->ps->weaponstate = WEAPON_READY;
   return;
  }
  PM_StartTorsoAnim( TORSO_ATTACK2 );
 } else {
  PM_StartTorsoAnim( TORSO_ATTACK );
 }

 pm->ps->weaponstate = WEAPON_FIRING;


 if ( ! pm->ps->ammo[ pm->ps->weapon ] ) {
  PM_AddEvent( EV_NOAMMO );
  pm->ps->weaponTime += 500;
  return;
 }


 if ( pm->ps->ammo[ pm->ps->weapon ] != -1 ) {
  pm->ps->ammo[ pm->ps->weapon ]--;
 }


 PM_AddEvent( EV_FIRE_WEAPON );

 switch( pm->ps->weapon ) {
 default:
 case 138:
  addTime = 400;
  break;
 case 135:
  addTime = 50;
  break;
 case 128:
  addTime = 1000;
  break;
 case 134:
  addTime = 100;
  break;
 case 136:
  addTime = 800;
  break;
 case 129:
  addTime = 800;
  break;
 case 132:
  addTime = 100;
  break;
 case 130:
  addTime = 1500;
  break;
 case 140:
  addTime = 200;
  break;
 case 137:
  addTime = 400;
  break;
 }
 if ( pm->ps->powerups[PW_HASTE] ) {
  addTime /= 1.3;
 }

 pm->ps->weaponTime += addTime;
}
