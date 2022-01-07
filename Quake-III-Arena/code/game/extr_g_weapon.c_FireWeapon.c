
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_12__ ;
typedef struct TYPE_23__ TYPE_11__ ;


struct TYPE_29__ {int weapon; } ;
struct TYPE_30__ {TYPE_5__ s; TYPE_4__* client; } ;
typedef TYPE_6__ gentity_t ;
struct TYPE_27__ {int viewangles; scalar_t__* powerups; } ;
struct TYPE_28__ {int oldOrigin; TYPE_3__ ps; scalar_t__ accuracy_shots; TYPE_2__* persistantPowerup; } ;
struct TYPE_26__ {TYPE_1__* item; } ;
struct TYPE_25__ {scalar_t__ giTag; } ;
struct TYPE_24__ {int integer; } ;
struct TYPE_23__ {int value; } ;


 int AngleVectors (int ,int ,int ,int ) ;
 int BFG_Fire (TYPE_6__*) ;
 int Bullet_Fire (TYPE_6__*,int ,int ) ;
 int CHAINGUN_SPREAD ;
 int CalcMuzzlePointOrigin (TYPE_6__*,int ,int ,int ,int ,int ) ;
 int GT_TEAM ;
 int MACHINEGUN_DAMAGE ;
 int MACHINEGUN_SPREAD ;
 int MACHINEGUN_TEAM_DAMAGE ;
 scalar_t__ NUM_NAILSHOTS ;
 scalar_t__ PW_DOUBLER ;
 size_t PW_QUAD ;
 int Weapon_Gauntlet (TYPE_6__*) ;
 int Weapon_GrapplingHook_Fire (TYPE_6__*) ;
 int Weapon_LightningFire (TYPE_6__*) ;
 int Weapon_Nailgun_Fire (TYPE_6__*) ;
 int Weapon_Plasmagun_Fire (TYPE_6__*) ;
 int Weapon_RocketLauncher_Fire (TYPE_6__*) ;
 int forward ;
 TYPE_12__ g_gametype ;
 TYPE_11__ g_quadfactor ;
 int muzzle ;
 int right ;
 int s_quadFactor ;
 int up ;
 int weapon_grenadelauncher_fire (TYPE_6__*) ;
 int weapon_proxlauncher_fire (TYPE_6__*) ;
 int weapon_railgun_fire (TYPE_6__*) ;
 int weapon_supershotgun_fire (TYPE_6__*) ;

void FireWeapon( gentity_t *ent ) {
 if (ent->client->ps.powerups[PW_QUAD] ) {
  s_quadFactor = g_quadfactor.value;
 } else {
  s_quadFactor = 1;
 }







 if( ent->s.weapon != 137 && ent->s.weapon != 138 ) {







  ent->client->accuracy_shots++;

 }


 AngleVectors (ent->client->ps.viewangles, forward, right, up);

 CalcMuzzlePointOrigin ( ent, ent->client->oldOrigin, forward, right, up, muzzle );


 switch( ent->s.weapon ) {
 case 138:
  Weapon_Gauntlet( ent );
  break;
 case 135:
  Weapon_LightningFire( ent );
  break;
 case 128:
  weapon_supershotgun_fire( ent );
  break;
 case 134:
  if ( g_gametype.integer != GT_TEAM ) {
   Bullet_Fire( ent, MACHINEGUN_SPREAD, MACHINEGUN_DAMAGE );
  } else {
   Bullet_Fire( ent, MACHINEGUN_SPREAD, MACHINEGUN_TEAM_DAMAGE );
  }
  break;
 case 136:
  weapon_grenadelauncher_fire( ent );
  break;
 case 129:
  Weapon_RocketLauncher_Fire( ent );
  break;
 case 132:
  Weapon_Plasmagun_Fire( ent );
  break;
 case 130:
  weapon_railgun_fire( ent );
  break;
 case 140:
  BFG_Fire( ent );
  break;
 case 137:
  Weapon_GrapplingHook_Fire( ent );
  break;
 default:

  break;
 }
}
