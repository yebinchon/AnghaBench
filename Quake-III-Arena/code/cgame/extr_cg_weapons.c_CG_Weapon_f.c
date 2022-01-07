
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int weaponSelect; TYPE_2__* snap; int time; int weaponSelectTime; } ;
struct TYPE_4__ {int pm_flags; int* stats; } ;
struct TYPE_5__ {TYPE_1__ ps; } ;


 int CG_Argv (int) ;
 int PMF_FOLLOW ;
 size_t STAT_WEAPONS ;
 int atoi (int ) ;
 TYPE_3__ cg ;

void CG_Weapon_f( void ) {
 int num;

 if ( !cg.snap ) {
  return;
 }
 if ( cg.snap->ps.pm_flags & PMF_FOLLOW ) {
  return;
 }

 num = atoi( CG_Argv( 1 ) );

 if ( num < 1 || num > 15 ) {
  return;
 }

 cg.weaponSelectTime = cg.time;

 if ( ! ( cg.snap->ps.stats[STAT_WEAPONS] & ( 1 << num ) ) ) {
  return;
 }

 cg.weaponSelect = num;
}
