
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ps; } ;
struct TYPE_3__ {int* stats; scalar_t__ weaponstate; int weaponTime; } ;


 int EV_CHANGE_WEAPON ;
 int PM_AddEvent (int ) ;
 int PM_StartTorsoAnim (int ) ;
 size_t STAT_WEAPONS ;
 int TORSO_DROP ;
 scalar_t__ WEAPON_DROPPING ;
 int WP_NONE ;
 int WP_NUM_WEAPONS ;
 TYPE_2__* pm ;

__attribute__((used)) static void PM_BeginWeaponChange( int weapon ) {
 if ( weapon <= WP_NONE || weapon >= WP_NUM_WEAPONS ) {
  return;
 }

 if ( !( pm->ps->stats[STAT_WEAPONS] & ( 1 << weapon ) ) ) {
  return;
 }

 if ( pm->ps->weaponstate == WEAPON_DROPPING ) {
  return;
 }

 PM_AddEvent( EV_CHANGE_WEAPON );
 pm->ps->weaponstate = WEAPON_DROPPING;
 pm->ps->weaponTime += 200;
 PM_StartTorsoAnim( TORSO_DROP );
}
