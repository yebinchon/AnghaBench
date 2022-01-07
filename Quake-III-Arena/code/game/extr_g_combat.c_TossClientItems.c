
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int gitem_t ;
struct TYPE_12__ {int weapon; } ;
struct TYPE_17__ {int count; TYPE_5__* client; TYPE_1__ s; } ;
typedef TYPE_6__ gentity_t ;
struct TYPE_19__ {scalar_t__ integer; } ;
struct TYPE_18__ {scalar_t__ time; } ;
struct TYPE_15__ {scalar_t__ weaponstate; int* stats; scalar_t__* powerups; scalar_t__* ammo; } ;
struct TYPE_13__ {int weapon; } ;
struct TYPE_14__ {TYPE_2__ cmd; } ;
struct TYPE_16__ {TYPE_4__ ps; TYPE_3__ pers; } ;


 int * BG_FindItemForPowerup (int) ;
 int * BG_FindItemForWeapon (int) ;
 TYPE_6__* Drop_Item (TYPE_6__*,int *,float) ;
 scalar_t__ GT_TEAM ;
 int PW_NUM_POWERUPS ;
 size_t STAT_WEAPONS ;
 scalar_t__ WEAPON_DROPPING ;
 int WP_GRAPPLING_HOOK ;
 int WP_MACHINEGUN ;
 int WP_NONE ;
 TYPE_8__ g_gametype ;
 TYPE_7__ level ;

void TossClientItems( gentity_t *self ) {
 gitem_t *item;
 int weapon;
 float angle;
 int i;
 gentity_t *drop;


 weapon = self->s.weapon;





 if ( weapon == WP_MACHINEGUN || weapon == WP_GRAPPLING_HOOK ) {
  if ( self->client->ps.weaponstate == WEAPON_DROPPING ) {
   weapon = self->client->pers.cmd.weapon;
  }
  if ( !( self->client->ps.stats[STAT_WEAPONS] & ( 1 << weapon ) ) ) {
   weapon = WP_NONE;
  }
 }

 if ( weapon > WP_MACHINEGUN && weapon != WP_GRAPPLING_HOOK &&
  self->client->ps.ammo[ weapon ] ) {

  item = BG_FindItemForWeapon( weapon );


  Drop_Item( self, item, 0 );
 }


 if ( g_gametype.integer != GT_TEAM ) {
  angle = 45;
  for ( i = 1 ; i < PW_NUM_POWERUPS ; i++ ) {
   if ( self->client->ps.powerups[ i ] > level.time ) {
    item = BG_FindItemForPowerup( i );
    if ( !item ) {
     continue;
    }
    drop = Drop_Item( self, item, angle );

    drop->count = ( self->client->ps.powerups[ i ] - level.time ) / 1000;
    if ( drop->count < 1 ) {
     drop->count = 1;
    }
    angle += 45;
   }
  }
 }
}
