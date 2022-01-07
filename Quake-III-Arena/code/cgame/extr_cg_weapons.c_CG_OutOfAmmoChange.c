
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int weaponSelect; int time; int weaponSelectTime; } ;


 scalar_t__ CG_WeaponSelectable (int) ;
 TYPE_1__ cg ;

void CG_OutOfAmmoChange( void ) {
 int i;

 cg.weaponSelectTime = cg.time;

 for ( i = 15 ; i > 0 ; i-- ) {
  if ( CG_WeaponSelectable( i ) ) {
   cg.weaponSelect = i;
   break;
  }
 }
}
