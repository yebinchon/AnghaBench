
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int weaponSelect; int time; int weaponSelectTime; TYPE_2__* snap; } ;
struct TYPE_4__ {int pm_flags; } ;
struct TYPE_5__ {TYPE_1__ ps; } ;


 scalar_t__ CG_WeaponSelectable (int) ;
 int PMF_FOLLOW ;
 int WP_GAUNTLET ;
 TYPE_3__ cg ;

void CG_NextWeapon_f( void ) {
 int i;
 int original;

 if ( !cg.snap ) {
  return;
 }
 if ( cg.snap->ps.pm_flags & PMF_FOLLOW ) {
  return;
 }

 cg.weaponSelectTime = cg.time;
 original = cg.weaponSelect;

 for ( i = 0 ; i < 16 ; i++ ) {
  cg.weaponSelect++;
  if ( cg.weaponSelect == 16 ) {
   cg.weaponSelect = 0;
  }
  if ( cg.weaponSelect == WP_GAUNTLET ) {
   continue;
  }
  if ( CG_WeaponSelectable( cg.weaponSelect ) ) {
   break;
  }
 }
 if ( i == 16 ) {
  cg.weaponSelect = original;
 }
}
