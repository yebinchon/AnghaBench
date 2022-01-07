
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_14__ {int weapon; int origin; } ;
struct TYPE_15__ {float random; TYPE_3__ s; int movedir; TYPE_2__* enemy; } ;
typedef TYPE_4__ gentity_t ;
struct TYPE_12__ {int currentOrigin; } ;
struct TYPE_13__ {TYPE_1__ r; } ;


 int CrossProduct (int ,int ,int ) ;
 int EV_FIRE_WEAPON ;
 int G_AddEvent (TYPE_4__*,int ,int ) ;
 int PerpendicularVector (int ,int ) ;
 int VectorCopy (int ,int ) ;
 int VectorMA (int ,float,int ,int ) ;
 int VectorNormalize (int ) ;
 int VectorSubtract (int ,int ,int ) ;



 float crandom () ;
 int fire_grenade (TYPE_4__*,int ,int ) ;
 int fire_plasma (TYPE_4__*,int ,int ) ;
 int fire_rocket (TYPE_4__*,int ,int ) ;

void Use_Shooter( gentity_t *ent, gentity_t *other, gentity_t *activator ) {
 vec3_t dir;
 float deg;
 vec3_t up, right;


 if ( ent->enemy ) {
  VectorSubtract( ent->enemy->r.currentOrigin, ent->s.origin, dir );
  VectorNormalize( dir );
 } else {
  VectorCopy( ent->movedir, dir );
 }


 PerpendicularVector( up, dir );
 CrossProduct( up, dir, right );

 deg = crandom() * ent->random;
 VectorMA( dir, deg, up, dir );

 deg = crandom() * ent->random;
 VectorMA( dir, deg, right, dir );

 VectorNormalize( dir );

 switch ( ent->s.weapon ) {
 case 130:
  fire_grenade( ent, ent->s.origin, dir );
  break;
 case 128:
  fire_rocket( ent, ent->s.origin, dir );
  break;
 case 129:
  fire_plasma( ent, ent->s.origin, dir );
  break;
 }

 G_AddEvent( ent, EV_FIRE_WEAPON, 0 );
}
