
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int lowAmmoWarning; TYPE_2__* snap; } ;
struct TYPE_8__ {int noAmmoSound; } ;
struct TYPE_9__ {TYPE_3__ media; } ;
struct TYPE_6__ {int* stats; int* ammo; } ;
struct TYPE_7__ {TYPE_1__ ps; } ;


 int CHAN_LOCAL_SOUND ;
 size_t STAT_WEAPONS ;

 int WP_MACHINEGUN ;
 int WP_NUM_WEAPONS ;




 TYPE_5__ cg ;
 TYPE_4__ cgs ;
 int trap_S_StartLocalSound (int ,int ) ;

void CG_CheckAmmo( void ) {
 int i;
 int total;
 int previous;
 int weapons;


 weapons = cg.snap->ps.stats[ STAT_WEAPONS ];
 total = 0;
 for ( i = WP_MACHINEGUN ; i < WP_NUM_WEAPONS ; i++ ) {
  if ( ! ( weapons & ( 1 << i ) ) ) {
   continue;
  }
  switch ( i ) {
  case 129:
  case 132:
  case 130:
  case 128:



   total += cg.snap->ps.ammo[i] * 1000;
   break;
  default:
   total += cg.snap->ps.ammo[i] * 200;
   break;
  }
  if ( total >= 5000 ) {
   cg.lowAmmoWarning = 0;
   return;
  }
 }

 previous = cg.lowAmmoWarning;

 if ( total == 0 ) {
  cg.lowAmmoWarning = 2;
 } else {
  cg.lowAmmoWarning = 1;
 }


 if ( cg.lowAmmoWarning != previous ) {
  trap_S_StartLocalSound( cgs.media.noAmmoSound, CHAN_LOCAL_SOUND );
 }
}
