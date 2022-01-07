
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int weapon; } ;
struct TYPE_6__ {TYPE_2__* ps; TYPE_1__ cmd; } ;
struct TYPE_5__ {int* stats; int weapon; int weaponTime; int weaponstate; } ;


 int PM_StartTorsoAnim (int ) ;
 size_t STAT_WEAPONS ;
 int TORSO_RAISE ;
 int WEAPON_RAISING ;
 int WP_NONE ;
 int WP_NUM_WEAPONS ;
 TYPE_3__* pm ;

__attribute__((used)) static void PM_FinishWeaponChange( void ) {
 int weapon;

 weapon = pm->cmd.weapon;
 if ( weapon < WP_NONE || weapon >= WP_NUM_WEAPONS ) {
  weapon = WP_NONE;
 }

 if ( !( pm->ps->stats[STAT_WEAPONS] & ( 1 << weapon ) ) ) {
  weapon = WP_NONE;
 }

 pm->ps->weapon = weapon;
 pm->ps->weaponstate = WEAPON_RAISING;
 pm->ps->weaponTime += 250;
 PM_StartTorsoAnim( TORSO_RAISE );
}
