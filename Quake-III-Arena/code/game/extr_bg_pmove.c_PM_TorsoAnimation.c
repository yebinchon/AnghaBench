
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ps; } ;
struct TYPE_3__ {scalar_t__ weaponstate; scalar_t__ weapon; } ;


 int PM_ContinueTorsoAnim (int ) ;
 int TORSO_STAND ;
 int TORSO_STAND2 ;
 scalar_t__ WEAPON_READY ;
 scalar_t__ WP_GAUNTLET ;
 TYPE_2__* pm ;

__attribute__((used)) static void PM_TorsoAnimation( void ) {
 if ( pm->ps->weaponstate == WEAPON_READY ) {
  if ( pm->ps->weapon == WP_GAUNTLET ) {
   PM_ContinueTorsoAnim( TORSO_STAND2 );
  } else {
   PM_ContinueTorsoAnim( TORSO_STAND );
  }
  return;
 }
}
